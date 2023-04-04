<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newuser.aspx.cs" Inherits="Newuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 76%;
            height: 428px;
        }
        .style3
        {
            width: 227px;
            text-align: right;
        }
        .style4
        {
            font-size: large;
            font-family: Algerian;
            color: #0066FF;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            font-size: xx-large;
            font-family: Algerian;
            color: #0066FF;
        }
        .style7
        {
            color: #FF0000;
        }
        .style8
        {
            font-size: large;
            font-family: Algerian;
            color: #0000FF;
        }
        .style9
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #FF3300;
        }
        .style10
        {
            text-align: center;
            height: 16px;
        }
        .style11
        {
            text-align: center;
            width: 118px;
        }
        .style12
        {
            width: 118px;
        }
        .style13
        {
            text-align: center;
            height: 16px;
            width: 118px;
        }
        .style14
        {
            width: 206px;
        }
    </style>
</head>
<body background="bg.jpg">
    <form id="form1" runat="server">
    <div class="style5">
    <div align="center">
    
        <br />
        <br />
        <br />
        <table class="style1" >
            <tr>
                <td class="style5" colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" CssClass="style6" Text="SIGN UP FOR NEW USER"></asp:Label>
                </td>
                <td class="style11" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" CssClass="style4" Text="USER NAME"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" CssClass="style7" Text="*"></asp:Label>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Please Enter The User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" CssClass="style4" Text="MOBILE NUMBER"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="mno" runat="server"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" CssClass="style7" Text="*"></asp:Label>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mno" ErrorMessage="Please Enter The mobile Number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" CssClass="style4" Text="PASSWORD"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="pass1" runat="server" TextMode="Password" ></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" CssClass="style7" Text="*"></asp:Label>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass1" ErrorMessage="Please Enter The Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" CssClass="style4" Text="CONFIRM PASSWORD"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="pass2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" CssClass="style7" Text="*"></asp:Label>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass2" ErrorMessage=" Please Enter The Confirm Password "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    <asp:Label ID="Label11" runat="server" CssClass="style9"></asp:Label>
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <span class="style4" lang="en-us">E-MAIL</span></td>
                <td class="style14">
                    <asp:TextBox ID="em" runat="server" Height="22px" Width="127px"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="em" ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label6" runat="server" CssClass="style7" Text="Password and Confirm Password must match. Fields marked '*' are  mandatory" BorderStyle="None"></asp:Label>
                    <br />
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="style8" onclick="Button1_Click" Text="CREATE" />
                </td>
                <td class="style14">
                    <asp:Button ID="Button2" runat="server" CssClass="style8" Height="32px" onclick="Button2_Click" Text="LOGIN" Width="85px" />
                </td>
                <td class="style12">
                    &nbsp;</td>
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
    
    </div>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
