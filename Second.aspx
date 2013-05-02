<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 95%;
            height: 194px;
        }
        .style3
        {
            width: 289px;
            height: 42px;
        }
        .style4
        {
            height: 42px;
        }
        .style5
        {
            width: 289px;
            height: 40px;
        }
        .style6
        {
            height: 40px;
        }
        .style7
        {
            width: 289px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
        }
        .style9
        {
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 288px;
        }
        .style16
        {
            width: 288px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
        .style21
        {
            width: 287px;
        }
        .style22
        {
            width: 290px;
        }
        .style23
        {
            width: 293px;
        }
        .style24
        {
            width: 305px;
        }
        .style25
        {
            width: 100%;
        }
        .style26
        {
            width: 288px;
            height: 44px;
        }
        .style27
        {
            height: 44px;
        }
        .style28
        {
            width: 287px;
            height: 68px;
        }
        .style29
        {
            height: 68px;
        }
        .style30
        {
            width: 288px;
        }
        .style31
        {
            width: 289px;
        }
        .style32
        {
            width: 291px;
        }
        .style33
        {
            height: 60px;
        }
        .style34
        {
            width: 1093px;
            height: 230px;
            z-index: 1;
            left: 17px;
            top: 16px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 227px; width: 954px">
    
        <asp:Panel ID="Panel1" runat="server" Height="121px" 
            BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px" 
            style="z-index: 1; left: 155px; top: 281px; position: absolute; height: 127px; width: 789px">
            <table class="style25">
                <tr>
                    <td class="style32">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style32">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label16" runat="server" Text="Regional Sites"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_RegSites" runat="server" Height="25px" Width="249px">
                            <asp:ListItem>select</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style32">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="543px" Width="750px" 
            BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px" 
            style="z-index: 1; left: 156px; top: 467px; position: absolute; height: 549px; width: 791px">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Personal Details" Font-Bold="True" 
                            Font-Size="Larger" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td class="style4">
                        </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lblMartial" runat="server" Text="Martial Sites"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_MartialSites" runat="server" >
                        <asp:ListItem>UnMarried</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                        <asp:ListItem>Awaiting Divorce</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="LblCaste" runat="server" Text="Caste"></asp:Label>
                    </td>
                    <td class="style6">
                        <br />
                        <asp:Label ID="Lbl_CasteName" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButtonList ID="Rbtn_casteStatus" runat="server">
                        <asp:ListItem>Willing to marry from the same community</asp:ListItem>
                        <asp:ListItem>Willing to marry from other communities also	

</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lSubCaste" runat="server" Text="Sub Caste"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_SubCaste" runat="server" Height="25px" 
                            Width="249px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="Lblgothram" runat="server" Text="Gothra(m)"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="Txt_Gothram" runat="server" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="LblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="Lbl_CountryName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <br />
                        <asp:Label ID="blState" runat="server" Text="Residing State"></asp:Label>
                    </td>
                    <td class="style8">
                        <br />
                        <asp:DropDownList ID="DDL_State" runat="server" Height="25px" 
                            Width="249px" AutoPostBack="True" onselectedindexchanged="DDL_State_SelectedIndexChanged1"
                             >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="LblCity" runat="server" Text="Residing City"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_City" runat="server" Height="25px" 
                            Width="249px" >
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Width="750px" 
            BorderColor="#FF6600" BorderStyle="Solid" 
            
            style="z-index: 1; left: 157px; top: 1073px; position: absolute; height: 557px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblPhysical" runat="server" Text="Physical Attribute" 
                            Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300"></asp:Label>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblHeight" runat="server" Text="Height*"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_Height" runat="server"></asp:TextBox>
                        <asp:Label ID="lbl_Height" runat="server" Text="[In Inches]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblWeight" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_Weight" runat="server"></asp:TextBox>
                        <asp:Label ID="Lbl_Weight" runat="server" Text="[In Kg's]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblBodytype" runat="server" Text="Body Type"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_BodyStatus" runat="server">
                        <asp:ListItem>Average</asp:ListItem>
                        <asp:ListItem>Athletic</asp:ListItem>
                        <asp:ListItem>Slim</asp:ListItem>
                        <asp:ListItem>    Heavy</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        <br />
                        <asp:Label ID="LblComplextion" runat="server" Text="Complextion"></asp:Label>
                    </td>
                    <td class="style27">
                        <br />
                        <asp:RadioButtonList ID="Rbtn_Complextion" runat="server">
                        <asp:ListItem>Very Fair</asp:ListItem>
                        <asp:ListItem>Fair</asp:ListItem>
                        <asp:ListItem>Wheatish</asp:ListItem>
                        <asp:ListItem>Wheatish brown</asp:ListItem>
                        <asp:ListItem>    Dark	</asp:ListItem>
                                                                           
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Physical Status"></asp:Label>
                    </td>
                    <td class="style17">
                        <br />
                        <asp:RadioButtonList ID="Rbtn_PhysicalStatus" runat="server">
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>PhysicalChallenged</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style9">
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            Width="750px" 
            style="z-index: 1; left: 157px; top: 1663px; position: absolute; height: 428px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblEdu" runat="server" Text=" Education &amp; Occupation" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblEducation" runat="server" Text="Highest Education"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_HighestEdu" runat="server" Height="25px" 
                            Width="250px" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblOcc" runat="server" Text="Occupation"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_Occupation" runat="server" Height="25px" 
                            Width="249px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Employed In"></asp:Label>
                    </td>
                    <td class="style29">
                        <asp:RadioButtonList ID="Rbtn_EmpIn" runat="server">
                            <asp:ListItem>Goverment</asp:ListItem>
                            <asp:ListItem>Private</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Self Employed</asp:ListItem>
                            <asp:ListItem>Defence	</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="LblIncome" runat="server" Text="Income"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_IncomeType" runat="server">
                            <asp:ListItem>Monthy Income</asp:ListItem>
                            <asp:ListItem>Annual Income</asp:ListItem>
                        </asp:RadioButtonList>
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
                        <br />
&nbsp;
                        <asp:DropDownList ID="DDL_IncomeType" runat="server" Height="25px" 
                            Width="150px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Amount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <img alt="" class="style34" src="Images/im.png" /><br />
        <asp:Panel ID="Panel5" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            Width="750px" 
            
            style="z-index: 1; left: 157px; top: 2163px; position: absolute; height: 360px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblHabits" runat="server" Text="Habits" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblFood" runat="server" Text="Food"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_Food" runat="server">
                            <asp:ListItem>Non_vegetrian</asp:ListItem>
                            <asp:ListItem>Vegetrian</asp:ListItem>
                            <asp:ListItem>Eggtrian</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblSmoking" runat="server" Text="Smoking"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_Smoking" runat="server">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Occesionally&nbsp;</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblDrink" runat="server" Text="Drinking"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_Drinking" runat="server">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Occesionally&nbsp;</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel6" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            Width="750px" 
            
            style="z-index: 1; left: 155px; top: 2580px; position: absolute; height: 275px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblAstro" runat="server" Text="Astrological Information" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblChevvai" runat="server" Text="Chevvai Dosham"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="Rbtn_Dhosam" runat="server">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>Dont know</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblStar" runat="server" Text="Star"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_Star" runat="server" Height="25px" Width="250px" 
                            AutoPostBack="True" onselectedindexchanged="DDL_Star_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblMoon" runat="server" Text="Raasi/Moon Sign"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_Moon" runat="server" Height="25px" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
       
        <asp:Panel ID="Panel7" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            Width="750px" 
            
            style="z-index: 1; left: 156px; top: 2902px; position: absolute; height: 366px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="LblProfile" runat="server" Text="Family Profile" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="Label14" runat="server" Text="Family Status"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_familystatus" runat="server">
                            <asp:ListItem>Middle Class</asp:ListItem>
                            <asp:ListItem>Upper-Middle Class</asp:ListItem>
                            <asp:ListItem>Rich</asp:ListItem>
                            <asp:ListItem>Affluent</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Family Type"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButtonList ID="Rbtn_FamType" runat="server">
                            <asp:ListItem>Joint</asp:ListItem>
                            <asp:ListItem>Nuclear</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="LblFamilyvalues" runat="server" Text="Family Values"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="Rbtn_FamValue" runat="server">
                            <asp:ListItem>Orthodox</asp:ListItem>
                            <asp:ListItem>Traditional</asp:ListItem>
                            <asp:ListItem>Moderate</asp:ListItem>
                            <asp:ListItem>Literal</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
       
        <asp:Panel ID="Panel8" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            Width="750px" 
            
            style="z-index: 1; left: 151px; top: 3314px; position: absolute; height: 248px; width: 792px">
            <table class="style1">
                <tr>
                    <td class="style33">
                        <asp:Label ID="LblDesr" runat="server" Text="Description" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="Txt_Desc" runat="server" 
                            Height="122px" Width="584px"></asp:TextBox>
                        </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="Cbox_Lisence" runat="server" 
            Text="I accept the Terms &amp; Conditions" ForeColor="#990099" 
            style="z-index: 1; left: 449px; top: 3637px; position: absolute" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Submit" runat="server" Text="Submit" 
            style="z-index: 1; left: 502px; top: 3704px; position: absolute" 
            onclick="btn_Submit_Click" />
       
    
    </div>
    </form>
</body>
</html>
