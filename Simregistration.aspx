<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Simregistration.aspx.cs" Inherits="Simregistration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 51%;
        height: 537px;
        position: relative;
        left: 174px;
        top: 26px;
    }
    .style5
    {
        font-size: xx-large;
        font-family: "Adobe Garamond Pro Bold";
        color: #CCFFFF;
        text-decoration: underline;
    }
    .style6
    {
        color: #CCFFFF;
        font-weight: bold;
        font-size: x-large;
        font-family: Aharoni;
    }
    .style7
    {
        width: 243px;
        text-align: right;
    }
    .style8
    {
            text-align: left;
            width: 288px;
        }
    .style9
    {
            width: 243px;
            color: #CCFFFF;
            font-size: x-large;
            font-family: Aharoni;
            text-align: right;
        }
    .style10
    {
        color: #CCFFFF;
        font-size: x-large;
        font-family: Aharoni;
    }
    .style11
    {
        font-size: large;
        font-family: Aharoni;
        color: #CCFFFF;
    }
    .style12
    {
        font-size: large;
        font-family: Aharoni;
        color: #FFFFFF;
    }
        .style14
        {
            color: #CCFFFF;
            font-size: x-large;
            font-family: Aharoni;
            text-align: left;
        }
        .style15
        {
            font-size: large;
            color: #99CCFF;
        }
        .style16
        {
            color: #FF0000;
        }
        .style17
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" style="border:2
    " border="1">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" CssClass="style5" Text="User And Sim Details"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label3" runat="server" CssClass="style6" Text="Sim Id No:"></asp:Label>
        </td>
        <td class="style8">
            <asp:TextBox ID="sid" runat="server" Width="167px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sid" ErrorMessage="Enter Sim Number" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            First
            Name:</td>
        <td class="style8">
            <asp:TextBox ID="fnm" runat="server" Width="166px" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fnm" ErrorMessage="Enter the First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Middel Name:</td>
        <td class="style8">
            <asp:TextBox ID="mnm" runat="server" Width="166px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mnm" ErrorMessage="Enter THe Middel Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Last Name:</td>
        <td class="style8">
            <asp:TextBox ID="lnm" runat="server" Width="165px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lnm" ErrorMessage="Enter the Last name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            MobileNumber:</td>
        <td class="style8">
            <asp:TextBox ID="mno" runat="server" Width="166px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mno" ErrorMessage="Enter the Mobile Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Date Of Birth:</td>
        <td class="style8">
            <asp:TextBox ID="d1" runat="server" Width="165px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="d1" ErrorMessage="Enter The Date Of Birth"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Gender:</td>
        <td class="style8">
&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="gender" runat="server" CssClass="style11" Width="163px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <span class="style16">*</span>&nbsp;</td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="gender" ErrorMessage="Gender Not Selected"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Address:</td>
        <td class="style8">
            <asp:TextBox ID="addr" runat="server" Width="170px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="addr" ErrorMessage="Enter the Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Permanent Address:</td>
        <td class="style8">
            <asp:TextBox ID="paddr" runat="server" Width="170px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="paddr" ErrorMessage="Enter the Permanent Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            E-mail:</td>
        <td class="style8">
            <asp:TextBox ID="em" runat="server" Width="169px"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="em" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Phone Number:</td>
        <td class="style8">
            <asp:TextBox ID="pno" runat="server" Width="169px"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="pno" ErrorMessage="Enter the Phone Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Account Balance:</td>
        <td class="style14">
            <asp:TextBox ID="accbal" runat="server" Width="169px"></asp:TextBox>
            <span class="style16">*</span></td>
        <td class="style14">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="accbal" CssClass="style17" ErrorMessage="Enter the First Recharge Amount"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10" colspan="2">
            <asp:Label ID="info" runat="server" CssClass="style15"></asp:Label>
        </td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Enter" BackColor="Red" CssClass="style12" Height="41px" Width="68px" onclick="Button1_Click" />
        </td>
        <td class="style10">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

