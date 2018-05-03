<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="PgStops.aspx.cs" Inherits="PgStops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">

    <asp:GridView ID="GridView1" CssClass="GridVw" runat="server" AutoGenerateColumns="False" CellPadding="20" DataKeyNames="Ar_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="95%" Height="3%" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text=""><i class="glyphicon glyphicon-floppy-ok"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text=""><i class="glyphicon glyphicon--remove"></i></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="glyphicon glyphicon-floppy-disk"></i></asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text=""><i class="glyphicon glyphicon-edit"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text=""><i class="glyphicon glyphicon-eye-open"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text=""><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ar_Id" InsertVisible="False" SortExpression="Ar_Id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ar_Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ar_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ar_Nom" SortExpression="Ar_Nom">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ar_Nom") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TBCol2" runat="server" ForeColor="#290F87"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Ar_Nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ar_Lon" SortExpression="Ar_Lon">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ar_Lon") %>' TextMode="Number"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TBCol3" runat="server" ForeColor="#290F87" TextMode="Number"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ar_Lon") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ar_Lat" SortExpression="Ar_Lat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ar_Lat") %>' TextMode="Number"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TBCol4" runat="server" ForeColor="#290F87" TextMode="Number"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Ar_Lat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Arret] WHERE [Ar_Id] = @original_Ar_Id AND (([Ar_Nom] = @original_Ar_Nom) OR ([Ar_Nom] IS NULL AND @original_Ar_Nom IS NULL)) AND (([Ar_Lon] = @original_Ar_Lon) OR ([Ar_Lon] IS NULL AND @original_Ar_Lon IS NULL)) AND (([Ar_Lat] = @original_Ar_Lat) OR ([Ar_Lat] IS NULL AND @original_Ar_Lat IS NULL))" InsertCommand="INSERT INTO [Arret] ([Ar_Nom], [Ar_Lon], [Ar_Lat]) VALUES (@Ar_Nom, @Ar_Lon, @Ar_Lat)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ar_Id], [Ar_Nom], [Ar_Lon], [Ar_Lat] FROM [Arret]" UpdateCommand="UPDATE [Arret] SET [Ar_Nom] = @Ar_Nom, [Ar_Lon] = @Ar_Lon, [Ar_Lat] = @Ar_Lat WHERE [Ar_Id] = @original_Ar_Id AND (([Ar_Nom] = @original_Ar_Nom) OR ([Ar_Nom] IS NULL AND @original_Ar_Nom IS NULL)) AND (([Ar_Lon] = @original_Ar_Lon) OR ([Ar_Lon] IS NULL AND @original_Ar_Lon IS NULL)) AND (([Ar_Lat] = @original_Ar_Lat) OR ([Ar_Lat] IS NULL AND @original_Ar_Lat IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Ar_Id" Type="Int32" />
            <asp:Parameter Name="original_Ar_Nom" Type="String" />
            <asp:Parameter Name="original_Ar_Lon" Type="Decimal" />
            <asp:Parameter Name="original_Ar_Lat" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ar_Nom" Type="String" />
            <asp:Parameter Name="Ar_Lon" Type="Decimal" />
            <asp:Parameter Name="Ar_Lat" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ar_Nom" Type="String" />
            <asp:Parameter Name="Ar_Lon" Type="Decimal" />
            <asp:Parameter Name="Ar_Lat" Type="Decimal" />
            <asp:Parameter Name="original_Ar_Id" Type="Int32" />
            <asp:Parameter Name="original_Ar_Nom" Type="String" />
            <asp:Parameter Name="original_Ar_Lon" Type="Decimal" />
            <asp:Parameter Name="original_Ar_Lat" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

