<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Userdetails.aspx.cs" Inherits="Userdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            color: #66FF99;
            font-size: x-large;
            font-family: Algerian;
            text-decoration: underline;
            height: 26px;
        text-align: center;
    }
        .style6
        {
            font-family: Algerian;
            font-size: x-large;
            color: #00FF00;
            width: 1132px;
            height: 29px;
        }
        .style7
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                User Information(sim)</td>
        </tr>
        <tr>
            <td>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Mobno" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="simid" HeaderText="simid" SortExpression="simid" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                        <asp:BoundField DataField="Mobno" HeaderText="Mobno" ReadOnly="True" SortExpression="Mobno" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="permanentaddr" HeaderText="permanentaddr" SortExpression="permanentaddr" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="accbal" HeaderText="accbal" SortExpression="accbal" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [simdetails] WHERE [Mobno] = @original_Mobno AND [simid] = @original_simid AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND [mname] = @original_mname AND (([lname] = @original_lname) OR ([lname] IS NULL AND @original_lname IS NULL)) AND [dob] = @original_dob AND [gender] = @original_gender AND [address] = @original_address AND [permanentaddr] = @original_permanentaddr AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL)) AND [accbal] = @original_accbal" InsertCommand="INSERT INTO [simdetails] ([simid], [fname], [mname], [lname], [Mobno], [dob], [gender], [address], [permanentaddr], [email], [phno], [accbal]) VALUES (@simid, @fname, @mname, @lname, @Mobno, @dob, @gender, @address, @permanentaddr, @email, @phno, @accbal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [simdetails]" UpdateCommand="UPDATE [simdetails] SET [simid] = @simid, [fname] = @fname, [mname] = @mname, [lname] = @lname, [dob] = @dob, [gender] = @gender, [address] = @address, [permanentaddr] = @permanentaddr, [email] = @email, [phno] = @phno, [accbal] = @accbal WHERE [Mobno] = @original_Mobno AND [simid] = @original_simid AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND [mname] = @original_mname AND (([lname] = @original_lname) OR ([lname] IS NULL AND @original_lname IS NULL)) AND [dob] = @original_dob AND [gender] = @original_gender AND [address] = @original_address AND [permanentaddr] = @original_permanentaddr AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL)) AND [accbal] = @original_accbal">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Mobno" Type="Decimal" />
                        <asp:Parameter Name="original_simid" Type="Decimal" />
                        <asp:Parameter Name="original_fname" Type="String" />
                        <asp:Parameter Name="original_mname" Type="String" />
                        <asp:Parameter Name="original_lname" Type="String" />
                        <asp:Parameter Name="original_dob" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_permanentaddr" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phno" Type="Decimal" />
                        <asp:Parameter Name="original_accbal" Type="Single" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="simid" Type="Decimal" />
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="mname" Type="String" />
                        <asp:Parameter Name="lname" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="permanentaddr" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phno" Type="Decimal" />
                        <asp:Parameter Name="accbal" Type="Single" />
                        <asp:Parameter Name="original_Mobno" Type="Decimal" />
                        <asp:Parameter Name="original_simid" Type="Decimal" />
                        <asp:Parameter Name="original_fname" Type="String" />
                        <asp:Parameter Name="original_mname" Type="String" />
                        <asp:Parameter Name="original_lname" Type="String" />
                        <asp:Parameter Name="original_dob" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_permanentaddr" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phno" Type="Decimal" />
                        <asp:Parameter Name="original_accbal" Type="Single" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="simid" Type="Decimal" />
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="mname" Type="String" />
                        <asp:Parameter Name="lname" Type="String" />
                        <asp:Parameter Name="Mobno" Type="Decimal" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="permanentaddr" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phno" Type="Decimal" />
                        <asp:Parameter Name="accbal" Type="Single" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <div class="style6">
                    <span class="style7">easy recharge user Information</span><br class="style7" />
                </div>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Username" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                        <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [newuser] WHERE [Username] = @Username" InsertCommand="INSERT INTO [newuser] ([Username], [mno], [pass], [email]) VALUES (@Username, @mno, @pass, @email)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Username], [mno], [pass], [email] FROM [newuser]" UpdateCommand="UPDATE [newuser] SET [mno] = @mno, [pass] = @pass, [email] = @email WHERE [Username] = @Username">
                    <DeleteParameters>
                        <asp:Parameter Name="Username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="mno" Type="Decimal" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="mno" Type="Decimal" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
                <br />
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

