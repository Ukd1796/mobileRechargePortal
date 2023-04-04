<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminComplaints.aspx.cs" Inherits="AdminComplaints" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            font-size: x-large;
            font-family: Aharoni;
            color: #CCFFFF;
        }
        .style6
        {
            color: #CCFFFF;
            position: relative;
            left: -11px;
            top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="style5" Text="Table Of User Complaints"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="style6" DataKeyNames="PhNo" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="PhNo" HeaderText="PhNo" ReadOnly="True" SortExpression="PhNo" />
                        <asp:BoundField DataField="Complaint" HeaderText="Complaint" SortExpression="Complaint" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Complaints] WHERE [PhNo] = @original_PhNo AND (([Complaint] = @original_Complaint) OR ([Complaint] IS NULL AND @original_Complaint IS NULL))" InsertCommand="INSERT INTO [Complaints] ([PhNo], [Complaint]) VALUES (@PhNo, @Complaint)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Complaints]" UpdateCommand="UPDATE [Complaints] SET [Complaint] = @Complaint WHERE [PhNo] = @original_PhNo AND (([Complaint] = @original_Complaint) OR ([Complaint] IS NULL AND @original_Complaint IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PhNo" Type="Decimal" />
                        <asp:Parameter Name="original_Complaint" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Complaint" Type="String" />
                        <asp:Parameter Name="original_PhNo" Type="Decimal" />
                        <asp:Parameter Name="original_Complaint" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PhNo" Type="Decimal" />
                        <asp:Parameter Name="Complaint" Type="String" />
                    </InsertParameters>
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
            </td>
        </tr>
    </table>
</asp:Content>

