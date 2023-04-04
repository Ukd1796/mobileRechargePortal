<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 38%;
            height: 373px;
            margin-left: 2px;
            position: relative;
            left: 285px;
            top: -369px;
        }
        .style2
        {
            text-align: center;
            height: 34px;
        }
        .style3
        {
            font-size: xx-large;
            font-family: Algerian;
            color: #CCFFFF;
        }
        .style4
        {
            font-size: x-large;
            font-family: Algerian;
            color: #0066FF;
        }
        .style8
        {
            text-decoration: none;
            font-weight: bold;
            font-size: large;
            font-family: Algerian;
        }
        .style15
        {
            text-align: center;
            height: 15px;
        }
        .style16
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style21
        {
            width: 162px;
            height: 36px;
        }
        .style22
        {
            width: 134px;
            height: 36px;
        }
        .style23
        {
            width: 162px;
            height: 18px;
        }
        .style24
        {
            width: 134px;
            height: 18px;
        }
        .style25
        {
            margin-left: 0px;
        }
        .style26
        {
            width: 162px;
            height: 30px;
        }
        .style27
        {
            width: 134px;
            height: 30px;
        }
        .style28
        {
            position: relative;
            left: -297px;
            top: -30px;
            width: 503px;
            height: 336px;
        }
        .style29
        {
            width: 1109px;
            height: 382px;
        }
        .style31
        {
            font-size: xx-large;
            font-family: Algerian;
            color: #0000FF;
        }
    </style>
</head>
<body background="bg.jpg">
    <p>
        <br />
    </p>
<center>
    <form id="form1" runat="server" style="border:double ">
    <div class="style29">
    
        <br />
        <span lang="en-us">&nbsp;&nbsp;
        <div class="style28">
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/ki.png" Width="172px" />
            <span lang="en-us"><span class="style31">
            <br />
            Login inorder to Enter the portal. you can recharge only if you are a registered user.....             <br />
            </span>
            <br />
            </span>
            <br />
            <br />
            <br />
            <br />
            <br style="background-image: url('ad.jpg')" />
            <br />
            <br />
            <br style="background-image: url('bt1.png')" />
        </div>
        </span>
        <table class="style1" style="border:double blue">
            <tr>
                <td class="style2" colspan="2" bgcolor="#3399FF">
                    <asp:Label ID="Label1" runat="server" CssClass="style3" Text="LOGIN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label2" runat="server" CssClass="style4" Text="USER NAME"></asp:Label>
                </td>
                <td class="style22">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="161px" CssClass="style25"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label3" runat="server" CssClass="style4" Text="PASSWORD"></asp:Label>
                </td>
                <td class="style24">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="159px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15" colspan="2">
                    <asp:Label ID="msg" runat="server" CssClass="style16"></asp:Label>
                </td>
            </tr>
            <tr bgcolor="#3399FF">
                <td class="style26">
                    <asp:Button ID="Button1" runat="server" CssClass="style4" Text="USER" onclick="Button1_Click" />
                </td>
                <td class="style27">
                    <asp:Button ID="Button2" runat="server" CssClass="style4" Text="ADMIN" onclick="Button2_Click" Width="98px" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style8" onclick="LinkButton1_Click">NEW USER REGISTER HERE</asp:LinkButton>
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
        <br />
    
    </div>
    </form>
    </center>
</body>
</html>
