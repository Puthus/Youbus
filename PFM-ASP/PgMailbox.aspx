<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="PgMailbox.aspx.cs" Inherits="PgMailbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">

    <br />
<asp:GridView ID="GridView1" CssClass="GridVw" runat="server" AutoGenerateColumns="False" CellPadding="20" DataKeyNames="Id_msg" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="95%" Height="3%" HorizontalAlign="Center" AllowPaging="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Id_msg" HeaderText="Id_msg" InsertVisible="False" ReadOnly="True" SortExpression="Id_msg" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
        <asp:BoundField DataField="Reciever" HeaderText="Reciever" SortExpression="Reciever" />
        <asp:BoundField DataField="date_msg" HeaderText="date_msg" SortExpression="date_msg" />
        <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
    </Columns>
    <EditRowStyle BackColor="#999999" Height="30px" Width="20%" />
    <FooterStyle BackColor="#290F87" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#290F87" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#210C69" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [Id_msg], [Subject], [Category], [Reciever], [date_msg], [Content] FROM [Message] WHERE ([Sender] = @Sender)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Sender" QueryStringField="select Id_Account from Account where Type = 'A'" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [Id_msg], [Sender], [Subject], [Category], [date_msg], [Content], [Vu] FROM [Message] WHERE ([Reciever] = @Reciever)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Reciever" QueryStringField="Select Id_Account from Account where Type = 'A'" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>

