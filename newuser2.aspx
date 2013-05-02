<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser2.aspx.cs" Inherits="newuser2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
               

</title>
<script type="text/javascript">
    function Validate_fields() {
        var Str_ddlvalue = document.getElementById().value;
        if (Str_ddlvalue == 0 ) {
            alert("Select Profile for");
        }


    }
</script>
    <style type="text/css">
        .style1
        {
            width: 43%;
            height: 692px;
            z-index: 1;
            left: 547px;
            top: 276px;
            position: absolute;
        }
        .style2
        {
            margin-left: 80px;
        }
        .style3
        {
            width: 424px;
        }
        .style4
        {
            margin-left: 80px;
        }
        .style5
        {
            width: 288px;
            margin-left: 80px;
        }
        .style6
        {
            width: 1093px;
            height: 230px;
            z-index: 1;
            left: 17px;
            top: 16px;
            position: absolute;
        }
        }
        </style>
    <script src="CityState.js" type="text/javascript"></script>
    <script>
        function FillCountryDropDown(DropDownCountry) {
            for (region in city_states) {
                $('<option />', { value: region, text: region }).appendTo(country);
            }

            // Logic to Sort the Country Options
            // Keep track of the selected option.
            var selectedValue = $(DropDownCountry).val();

            // Sort all the options by text. I could easily sort these by val.
            $(country).html($("option", $(DropDownCountry)).sort(function (a, b) {
                return a.text == b.text ? 0 : a.text < b.text ? -1 : 1
            }));

            // Select one option.
            $(country).val(selectedValue);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="hh" runat="server">
    
        <table class="style1" bgcolor="#33CC33">
            <tr>
                <td class="style4" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="RegLable" runat="server" Text="REGISTER FREE" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblProf" runat="server" Text="Matrimony Profile For"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDl_ProfileFor" runat="server" Height="25px" 
                         Width="223px">
                    </asp:DropDownList>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="Lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="Txt_Name" runat="server" Width="217px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblDof" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="Txt_DOB" runat="server" Height="25px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="MM/DD/YYYY"></asp:Label>
                    <br />
                   <asp:CompareValidator id="dateValidator" runat="server"
  Type="Date" Operator="DataTypeCheck" ControlToValidate="Txt_DOB"
  ErrorMessage="Please enter a valid date.">
</asp:CompareValidator>
                    &nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButtonList ID="Rbtn_Gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblReli" runat="server" Text="Religion"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDL_Religion" runat="server" Height="25px" 
                        Width="249px" AutoPostBack="True" 
                        onselectedindexchanged="DDL_Religion_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblMother" runat="server" Text="Mother Tongue"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDL_MotherTongue" runat="server" Height="25px" 
                        Width="249px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblCaste" runat="server" Text="Caste?Division"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDL_Caste" runat="server" Height="25px" Width="249px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblCountry" runat="server" Text="Country Living in"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDL_Country" runat="server" Height="25px" 
                        Width="249px" AutoPostBack="True" 
                        onselectedindexchanged="DDL_Country_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblMobile" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="DDL_MobileCode" runat="server">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:TextBox ID="Txt_Phoneno" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator  Runat="server" ID="valNumbersOnly" ControlToValidate="Txt_Phoneno" Display="Dynamic" ErrorMessage="Please enter a numbers only in text box." ValidationExpression="(^([0-9]*|\d*\d{1}?\d*)$)">

</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblMail" runat="server" Text="E-Mail"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="Txt_Mail" runat="server" Height="25px" Width="249px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="LblPwd" runat="server" Text="Login Password"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="Txt_Pwd" runat="server" Height="25px" Width="250px" 
                        TextMode="Password" name="Txt_Pwd"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="valPassword" runat="server"  
   ControlToValidate="Txt_Pwd" 
   ErrorMessage="Minimum password length is 5" 
   ValidationExpression=".{5}.*" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn_Submit"  runat="server" Text="Submit" 
                        onclick="Btn_Submit_Click" OnClientClick="Validate_fields(); return false;" />
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <br />
        <img alt="" class="style6" src="Images/im.png" /><br />
        <br />
         
    
    </div>
    <div style="z-index: 1; left: 24px; top: 285px; position: absolute; height: 620px; width: 509px">

        </div>
    </form>
</body>
</html>
