using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MatrimonyModel;

public partial class newuser2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StrCon"].ConnectionString);
    MatrimonyEntities objMatrimonyEntities;

    protected void Page_Load(object sender, EventArgs e)
    {
        objMatrimonyEntities = new MatrimonyEntities();

        LoadProfileForCombo();
        LoadMotherTongueCombo();

        if (!IsPostBack)
        {
            LoadReligionCombo();
            LoadCountryCombo();
        }
    }

    // populate profileFor
    protected void LoadProfileForCombo()
    {
        DDl_ProfileFor.Items.Insert(0, new ListItem("--Select--", "0"));
        DDl_ProfileFor.Items.Insert(1, new ListItem("Myself", "1"));
        DDl_ProfileFor.Items.Insert(2, new ListItem("Son", "2"));
        DDl_ProfileFor.Items.Insert(3, new ListItem("Daughter", "3"));
        DDl_ProfileFor.Items.Insert(4, new ListItem("Brother", "4"));
        DDl_ProfileFor.Items.Insert(5, new ListItem("Sister", "5"));
        DDl_ProfileFor.Items.Insert(6, new ListItem("Friend", "6"));
        DDl_ProfileFor.Items.Insert(7, new ListItem("Relative", "7"));
    }

    //Populate Religion
    protected void LoadReligionCombo()
    {
        DDL_Religion.DataSource = objMatrimonyEntities.Religions;
        DDL_Religion.DataTextField = "ReligionName";
        DDL_Religion.DataValueField = "ReligionId";
        DDL_Religion.DataBind();
        DDL_Religion.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Mother Tongue
    protected void LoadMotherTongueCombo()
    {
        DDL_MotherTongue.DataSource = objMatrimonyEntities.MotherTongues;
        DDL_MotherTongue.DataTextField = "TongueName";
        DDL_MotherTongue.DataValueField = "TongueID";
        DDL_MotherTongue.DataBind();
        DDL_MotherTongue.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Caste
    protected void LoadCasteCombo()
    {
        int intReligionID;
        bool blnCheck = int.TryParse(DDL_Religion.SelectedValue, out intReligionID);

        var query = (from m in objMatrimonyEntities.Castes
                     where m.ReligionID == intReligionID
                     select m).ToList();

        DDL_Caste.DataSource = query;
        DDL_Caste.DataTextField = "CasteName";
        DDL_Caste.DataValueField = "CasteID";
        DDL_Caste.DataBind();
        DDL_Caste.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Country
    protected void LoadCountryCombo()
    {
        DDL_Country.DataSource = objMatrimonyEntities.Countries;
        DDL_Country.DataTextField = "CountryName";
        DDL_Country.DataValueField = "CountryID";
        DDL_Country.DataBind();
        DDL_Country.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //CountryCode
    protected void LoadCountryCodeCombo()
    {
        int intCountryID;
        bool blnCheck = int.TryParse(DDL_Country.SelectedValue, out intCountryID);

        var query = (from m in objMatrimonyEntities.Countries
                     where m.CountryID == intCountryID
                     select m).ToList();

        DDL_MobileCode.DataSource = query;
        DDL_MobileCode.DataTextField = "CountryCode";
        DDL_MobileCode.DataValueField = "CountryName";
        DDL_MobileCode.DataBind();
    }


    protected void DDL_Religion_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCasteCombo();

    }
    protected void Btn_Submit_Click(object sender, EventArgs e)
    {


        Session["Sessionname"] = Txt_Name.Text.ToString();
        Session["SessionGender"] = Rbtn_Gender.SelectedValue;
        Session["SessionDOB"] = Txt_DOB.Text.ToString();
        Session["SessionReligion"] = DDL_Religion.SelectedItem;
        Session["SessionMotherTon"] = DDL_MotherTongue.SelectedItem;
        Session["SessionCaste"] = DDL_Caste.SelectedValue.ToList();
        Session["SessionCountry"] = DDL_Country.SelectedItem;
        Session["SessionMobile"] = Txt_Phoneno.Text;
        Session["SessionEmail"] = Txt_Mail.Text;
        Session["SessionPSW"] = Txt_Pwd.Text;
        Response.Redirect("Second.aspx");
    }

    protected void DDL_Country_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCountryCodeCombo();
    }
}