<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ucomplaints.aspx.cs" Inherits="Ucomplaints" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 41%;
        height: 189px;
    }
    .style9
    {
        text-align: right;
    }
        .style15
        {
            width: 611px;
            height: 54px;
        }
        .style16
        {
            font-size: large;
            font-family: "Adobe Garamond Pro Bold";
            color: #0000CC;
        }
        .style17
        {
            width: 468px;
            height: 213px;
            position: relative;
            left: 0px;
            top: 22px;
        }
        .style18
        {
            font-size: x-large;
            font-family: Algerian;
            color: #FFFFCC;
        }
        .style19
        {
            width: 100%;
            height: 172px;
        }
        .style20
        {
            width: 221px;
        }
        .style21
        {
            margin-right: 0px;
        }
        .style22
        {
            font-size: medium;
            font-family: Algerian;
        }
        .style23
        {
            font-size: large;
        }
        .style27
        {
            width: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h5>
    <br />
</h5>
     <center>  
    <div class="style15" style="border: medium double #FFFFFF; text-decoration: blink; color: #00FF00" align="center">
        <span class="style16">I<span lang="en-us">f you have Any Complaints About Your Mobile Services. Please Let Us Know.......</span></span><span lang="en-us"><span lang="en-us"><br class="style16" />
        <span class="style16">We&#39;ll Try Our Best To Help You Out :-)</span></div>
        </center>
        <center>
    <div class="style17" align="center" style="border: thick double #FFFFFF; position: relative; background-color: #6699FF;">
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
        <span lang="en-us">
        <table class="style19" bgcolor="#6699FF">
            <tr>
                <td class="style20">
        <span lang="en-us">
        <asp:Label ID="Label3" runat="server" CssClass="style18" Text="Phone Number:"></asp:Label>
        </span>
                </td>
                <td>
        <span lang="en-us">
        <asp:TextBox ID="pno" runat="server" Height="39px" Width="191px" CssClass="style21"></asp:TextBox>
        </span>
                </td>
                <td class="style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pno" ErrorMessage="Enter The Mobile Number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
        <span lang="en-us">
        <asp:Label ID="Label4" runat="server" CssClass="style18" Text="complaint:"></asp:Label>
        </span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="53px" TextMode="MultiLine" Width="189px"></asp:TextBox>
                </td>
                <td class="style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="What Complaint?"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
        <span lang="en-us">
        <asp:Button ID="Submit" runat="server" Text="SUBMIT" CssClass="style22" onclick="Submit_Click" />
        </span>
                </td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Info" runat="server" CssClass="style23"></asp:Label>
                </td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
        </table>
        </span>
        </center>
    </div>
    </center>
        <span lang="en-us">
    </span>
        
            </span></span>
        
            </asp:Content>

