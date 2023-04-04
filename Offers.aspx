<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="Offers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        font-size: x-large;
        font-family: Algerian;
        color: #00FF00;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="style4">OFFERS ON RECHARGE</span></p>
<p>
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" Height="146px" Width="652px">
        <RowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Recharge_amt" HeaderText="Recharge_amt" SortExpression="Recharge_amt" />
            <asp:BoundField DataField="Talktime" HeaderText="Talktime" SortExpression="Talktime" />
            <asp:BoundField DataField="Validity" HeaderText="Validity" SortExpression="Validity" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [offers] WHERE [id] = @id" InsertCommand="INSERT INTO [offers] ([Recharge_amt], [Talktime], [Validity], [id]) VALUES (@Recharge_amt, @Talktime, @Validity, @id)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Recharge_amt], [Talktime], [Validity], [id] FROM [offers]" UpdateCommand="UPDATE [offers] SET [Recharge_amt] = @Recharge_amt, [Talktime] = @Talktime, [Validity] = @Validity WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Recharge_amt" Type="Int32" />
            <asp:Parameter Name="Talktime" Type="Int32" />
            <asp:Parameter Name="Validity" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Recharge_amt" Type="Int32" />
            <asp:Parameter Name="Talktime" Type="Int32" />
            <asp:Parameter Name="Validity" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="Recharge_amt" HeaderText="Recharge_amt" SortExpression="Recharge_amt" />
            <asp:BoundField DataField="Talktime" HeaderText="Talktime" SortExpression="Talktime" />
            <asp:BoundField DataField="Validity" HeaderText="Validity" SortExpression="Validity" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />
    <br />
    </center>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

