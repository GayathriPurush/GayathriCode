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

public partial class Second : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StrCon"].ConnectionString);
    MatrimonyEntities objMatrimonyEntities;


    protected void Page_Load(object sender, EventArgs e)
    {
        objMatrimonyEntities = new MatrimonyEntities();

        string TxtName = Convert.ToString(Session["Sessionname"]);
        string TxtDob = Convert.ToString(Session["SessionDOB"]);
        string TxtGender = Convert.ToString(Session["SessionGender"]);
        string Txtreligion = Convert.ToString(Session["SessionReligion"]);
        string TxtMotherTon = Convert.ToString(Session["SessionMotherTon"]);
        string TxtCaste = Convert.ToString(Session["SessionCaste"]);
        string TxtCountry = Convert.ToString(Session["SessionCountry"]);
        string TxtMobile = Convert.ToString(Session["SessionMobile"]);
        string TxtEmail = Convert.ToString(Session["SessionEmail"]);
        string TxtPwd = Convert.ToString(Session["SessionPSW"]);
        Lbl_CountryName.Text = TxtCountry;
        Lbl_CasteName.Text = TxtCaste;

        LoadHigherEduCombo();
        LoadOccupCombo();
        LoadCurrencyCombo();
        SubCaste();
        RegionalSitesn();

        if (!IsPostBack)
        {
            LoadStarCombo();
            LoadStateCombo();
        }

    }

    //RegionalSites
    protected void RegionalSitesn()
    {
        //////con.Open();
        //////DataSet ds = null;
        //////String str_query = "Select * from RegionalSitesn";
        //////SqlCommand cmd = new SqlCommand(str_query, con);
        //////SqlDataAdapter da = new SqlDataAdapter(cmd);
        //////ds = new DataSet();
        //////da.Fill(ds);
        //////DDL_RegSites.DataSource = ds;
        //////DDL_RegSites.DataTextField = "RegionalSitesName";
        //////DDL_RegSites.DataValueField = "RegionalSitesId";
        //////DDL_RegSites.DataBind();
        //////DDL_RegSites.Items.Insert(0, new ListItem("--Select--", "0"));
        //////con.Close();

        // NOT REQUIRED
    }

    //Education
    protected void LoadHigherEduCombo()
    {
        DDL_HighestEdu.DataSource = objMatrimonyEntities.HighEducations;
        DDL_HighestEdu.DataTextField = "EducationName";
        DDL_HighestEdu.DataValueField = "EducationID";
        DDL_HighestEdu.DataBind();
        DDL_HighestEdu.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Occupation
    protected void LoadOccupCombo()
    {
        DDL_Occupation.DataSource = objMatrimonyEntities.Occupations;
        DDL_Occupation.DataTextField = "OccupName";
        DDL_Occupation.DataValueField = "OccupID";
        DDL_Occupation.DataBind();
        DDL_Occupation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Currency
    protected void LoadCurrencyCombo()
    {
        DDL_IncomeType.DataSource = objMatrimonyEntities.Currencies;
        DDL_IncomeType.DataTextField = "CurrName";
        DDL_IncomeType.DataValueField = "CurrID";
        DDL_IncomeType.DataBind();
        DDL_IncomeType.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //State
    protected void LoadStateCombo()
    {
        DDL_State.DataSource = objMatrimonyEntities.StateDetails;
        DDL_State.DataTextField = "StateName";
        DDL_State.DataValueField = "StateID";
        DDL_State.DataBind();
        DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_State_SelectedIndexChanged1(object sender, EventArgs e)
    {
        LoadCityCombo();
    }

    //City
    protected void LoadCityCombo()
    {
        int intStateID;
        bool blnCheck = int.TryParse(DDL_State.SelectedValue, out intStateID);

        var query = (from m in objMatrimonyEntities.Cities
                     where m.StateID == intStateID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDL_City.DataTextField = "CityName";
        DDL_City.DataValueField = "CityID";
        DDL_City.DataBind();
        DDL_City.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //SubCaste
    protected void SubCaste()
    {
        //int intCasteID;
        //bool blnCheck = int.TryParse(Session["SessionCaste"].ToString(), out intCasteID);

        //var query = (from m in objMatrimonyEntities.SubCastes
        //             where m.CasteID == intCasteID
        //             select m).ToList();

        //DDL_SubCaste.DataSource = query;
        //DDL_SubCaste.DataTextField = "SubCasteName";
        //DDL_SubCaste.DataValueField = "SubCasteID";
        //DDL_SubCaste.DataBind();
        //DDL_SubCaste.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Star
    protected void LoadStarCombo()
    {
        DDL_Star.DataSource = objMatrimonyEntities.StarDetails;
        DDL_Star.DataTextField = "StarName";
        DDL_Star.DataValueField = "StarID";
        DDL_Star.DataBind();
        DDL_Star.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_Star_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadRasiCombo();
    }

    //Rassi
    protected void LoadRasiCombo()
    {
        DDL_Moon.DataSource = objMatrimonyEntities.Raasis;
        DDL_Moon.DataTextField = "RaasiName";
        DDL_Moon.DataValueField = "RaasiID";
        DDL_Moon.DataBind();
        DDL_Moon.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        SqlTransaction Transaction;
        con.Open();
        Transaction = con.BeginTransaction();
        try
        {
            new SqlCommand("INSERT INTO Transact VALUES ('" + Convert.ToString(Session["Sessionname"]) + "','" + Convert.ToString(Session["SessionDOB"]) + "','" + Convert.ToString(Session["SessionGender"]) + "','" + Convert.ToString(Session["SessionMobile"]) + "','" + Convert.ToString(Session["SessionCountry"]) + "','" + DDL_State.SelectedItem + "','" + DDL_City.SelectedItem + "','" + Convert.ToString(Session["SessionReligion"]) + "','" + Convert.ToString(Session["SessionCaste"]) + "','" + DDL_SubCaste.SelectedItem + "','" + Txt_Gothram.Text + "','" + Convert.ToString(Session["SessionEmail"]) + "','" + Rbtn_PhysicalStatus.SelectedValue + "','" + Txt_Desc.Text + "');", con, Transaction).ExecuteNonQuery();

            new SqlCommand("INSERT INTO EduDetails values ('" + Txt_Height.Text + "','" + DDL_Occupation.SelectedItem + "','" + Rbtn_EmpIn.SelectedValue + "','" + Rbtn_IncomeType.SelectedValue + "','" + DDL_IncomeType.SelectedItem + "','" + Txt_Amount.Text + "');", con, Transaction).ExecuteNonQuery();

            new SqlCommand("INSERT INTO Habit values('" + Rbtn_Food.SelectedValue + "','" + Rbtn_Smoking.SelectedValue + "','" + Rbtn_Drinking.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

            new SqlCommand("INSERT INTO AstrologicalInfo values('" + Rbtn_Dhosam.SelectedValue + "','" + DDL_Star.SelectedItem + "','" + DDL_Moon.SelectedItem + "');", con, Transaction).ExecuteNonQuery();

            new SqlCommand("insert into Family values('" + Rbtn_familystatus.SelectedValue + "','" + Rbtn_FamType.SelectedValue + "','" + Rbtn_FamValue.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

            Transaction.Commit();

        }


        catch
        {
            Transaction.Rollback();
        }
        con.Close();
    }



}
