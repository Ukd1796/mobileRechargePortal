<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Urecharge.aspx.cs" Inherits="Urecharge" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 53%;
        height: 297px;
    }
    .style13
    {
        height: 23px;
        position: relative;
    }
    .style14
    {
        font-size: x-large;
        font-family: Algerian;
        color: #CCFFFF;
        text-decoration: underline;
    }
        .style18
        {
            width: 355px;
            text-align: right;
            height: 31px;
        }
        .style19
        {
            text-align: left;
            height: 31px;
            width: 328px;
        }
        .style20
        {
            width: 355px;
            text-align: right;
            height: 43px;
        }
        .style21
        {
            text-align: left;
            height: 43px;
            width: 328px;
        }
        .style22
        {
            width: 355px;
            text-align: right;
            height: 34px;
        }
        .style23
        {
            text-align: left;
            height: 34px;
            width: 328px;
        }
        .style28
        {
            width: 355px;
            text-align: right;
            height: 61px;
        }
        .style29
        {
            text-align: left;
            height: 61px;
            width: 328px;
        }
        .style31
        {
            width: 355px;
            text-align: right;
            height: 33px;
            font-family: Aharoni;
            font-size: large;
            color: #FFFFFF;
        }
        .style32
        {
            text-align: left;
            height: 33px;
            width: 328px;
        }
        .style33
        {
            text-align: center;
            height: 54px;
        }
        .style34
        {
            text-align: center;
            height: 54px;
            font-size: large;
            font-family: Aharoni;
            color: #0000FF;
        }
        .style35
        {
            text-align: left;
            height: 117px;
            font-size: large;
            font-family: Aharoni;
            color: #0000FF;
        }
    .style36
    {
        font-size: large;
        font-family: Aharoni;
        color: #0000FF;
        position: relative;
        left: 0px;
        top: 2px;
        height: 32px;
    }
    .style37
    {
        font-size: large;
        font-family: Aharoni;
        color: #FFFFFF;
    }
    .style38
    {
        font-size: medium;
    }
    .style39
    {
        color: #99CCFF;
    }
        .style40
        {
            text-align: center;
            height: 18px;
        }
        .style41
        {
            color: #FFFFFF;
        }
        .style42
        {
            color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
        
    <center>
        <span lang="en-us">
    <table class="style12">
    <tr>
        <td bgcolor="#CC99FF" class="style13" colspan="2">
            <asp:Label ID="Label2" runat="server" CssClass="style14" Text="EASY RECHARGE"></asp:Label>
        </td>
        <td bgcolor="#CC99FF" class="style13">
            &nbsp;</td>
    </tr>
    <tr bgcolor="#3366FF">
        <td class="style18">
            <asp:Label ID="Label3" runat="server" CssClass="style37" Text="Phone number:"></asp:Label>
        </span>
        </span>:<span lang="en-us"><br />
        </span>(Enter your 10 digit prepaid mobile number)</td>
        <span lang="en-us">
        <td class="style19">
            <asp:TextBox ID="Phno" runat="server" Width="218px"></asp:TextBox>
    </span>
        
            *</td>
        <td class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Phno" ErrorMessage="Enter Your Phone Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
    <tr bgcolor="#3366FF">
        <td class="style20">
        <span lang="en-us">
            <asp:Label ID="Label4" runat="server" CssClass="style37" Text="Re - Enter Phone number:"></asp:Label>
            <br />
            (</span>Re-<span lang="en-us">Enter your 10 digit prepaid mobile number)</span></td>
        <td class="style21">
            <asp:TextBox ID="RPhno" runat="server" Width="216px"></asp:TextBox>
            *</td>
        <td class="style21">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RPhno" ErrorMessage="Re Enter your Phone Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr bgcolor="#3366FF">
        <td class="style22">
            <asp:Label ID="Label5" runat="server" CssClass="style37" Text="E-mail Id:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="Eid" runat="server" Width="218px"></asp:TextBox>
        </td>
        <td class="style23">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Eid" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr bgcolor="#3366FF">
        <td class="style28">
            <asp:Label ID="Label7" runat="server" CssClass="style37" Text="Recharge Amount (Rs.):"></asp:Label>
        </td>
        <td class="style29">
            <asp:DropDownList ID="amt" runat="server" DataSourceID="SqlDataSource2" DataTextField="Recharge_amt" DataValueField="Recharge_amt">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Recharge_amt] FROM [offers]"></asp:SqlDataSource>
            *</span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td class="style29">
            &nbsp;</td>
    </tr>
        </span>
        </span>
        </span>
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
    <tr bgcolor="#3366FF">
        <td class="style31">
            Credit/Debit Card Number</td>
        <td class="style32">
        <span lang="en-us">
            <asp:TextBox ID="num" runat="server" Width="184px"></asp:TextBox>
    </span>
        </span>
        </span>
        </span>*<span lang="en-us"><br />
        </td>
        <td class="style32">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="num" ErrorMessage="Enter The Credit Card Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style40" bgcolor="#3366FF" colspan="2">
            <asp:Label ID="info" runat="server" CssClass="style41"></asp:Label>
        </span>
        </span>
        </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="bala" runat="server" CssClass="style42"></asp:Label>
        </td>
        <td class="style40" bgcolor="#3366FF">
            &nbsp;</td>
    </tr>
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
    <tr>
        <td class="style33" bgcolor="#3366FF" colspan="2">
            <font class="arial11red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang="en-us">
            <asp:Button ID="submit" runat="server" CssClass="style36" Text="Submit" Width="93px" onclick="submit_Click" />
    </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fields marked with * are mandatory</font></td>
        <td class="style33" bgcolor="#3366FF">
            &nbsp;</td>
    </tr>
        </span>
        </span>
        </span>
        </span>
            </span>
        </span>
        </span>
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        </span>
        </span>
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
        <span lang="en-us">
    <tr>
        <td class="style34" bgcolor="#9966FF" colspan="2">
            <span class="style39">Details of Recharge Amount:<br />
            </span>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="style39" DataSourceID="SqlDataSource1" Height="103px" Width="409px" BackColor="#CCCCFF" ForeColor="#660066">
                <Columns>
                    <asp:BoundField DataField="Recharge_amt" HeaderText="Recharge_amt" SortExpression="Recharge_amt" />
                    <asp:BoundField DataField="Talktime" HeaderText="Talktime" SortExpression="Talktime" />
                    <asp:BoundField DataField="Validity" HeaderText="Validity" SortExpression="Validity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Recharge_amt], [Talktime], [Validity] FROM [offers]"></asp:SqlDataSource>
        </td>
        <td class="style34" bgcolor="#9966FF">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style35" bgcolor="#9966FF" colspan="2">
            <font class="arial"><span class="style39"><span style="PADDING-LEFT: 15px; " class="style38">- To make payment on this site, you need to have credit/debit card PIN else please register for OTP.</span><br class="style38" />
            <span style="PADDING-LEFT: 15px; " class="style38">- For J &amp; K customers, service tax is not charged hence talktime will be higher.</span><br class="style38" />
            <span style="PADDING-LEFT: 15px; " class="style38">- No additional charges levied, while using credit or debit card.</span><br class="style38" />
            <span style="PADDING-LEFT: 15px; " class="style38">- Benefits mentioned on above denominations are available only for&nbsp; this online recharge and will differ in case recharged through any other recharge platforms.</span>
            <div id="internroam" style="DISPLAY: none">
                <span style="PADDING-LEFT: 15px; " class="style38">* applicable in selected countries/networks, for details please visit </span>
                </span> <a href="#" onclick="javascript:window.open('http://www.airtel.in/irsupercharge')" style="FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none" class="style39">
                <span style="PADDING-LEFT: 15px; " class="style38"><u>www.airtel.in/irsupercharge</u></span></a><span style="PADDING-LEFT: 15px; " class="style38"><a href="#" onclick="javascript:window.open('http://www.airtel.in/irsupercharge')" style="FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none" class="style39"><span style="PADDING-LEFT: 15px; FONT-SIZE: 10px"> </span>
                </a></span>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </font>
        </td>
        <td class="style35" bgcolor="#9966FF">
            &nbsp;</td>
    </tr>
</table>
    </span>
    </center>
    <span lang="en-us">
        </span>
        </span>
            </span>
        </span>
            </span></span>
        </span>
        </span></span>
        </span>
            </span>
            </span></span>
            </asp:Content>

