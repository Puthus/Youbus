<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="PgLines.aspx.cs" Inherits="PgLines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <div>
        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="#FF6600"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" CssClass="GridVw" runat="server" AutoGenerateColumns="False" CellPadding="20" DataKeyNames="Num_Ligne" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="95%" Height="3%" HorizontalAlign="Center" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1">Add</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Num_Ligne" SortExpression="Num_Ligne">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Num_Ligne") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol1" runat="server" ForeColor="#290F87"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Num_Ligne") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Id_Start" SortExpression="Id_Start">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ar_Nom" DataValueField="Ar_Id" SelectedValue='<%# Bind("Id_Start") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DDCol2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ar_Nom" DataValueField="Ar_Id" ForeColor="#290F87" SelectedValue='<%# Bind("Id_Start") %>'>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Id_Start") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Id_End" SortExpression="Id_End">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ar_Nom" DataValueField="Ar_Id" SelectedValue='<%# Bind("Id_End") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DDCol3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ar_Nom" DataValueField="Ar_Id" ForeColor="#290F87" SelectedValue='<%# Bind("Id_Start") %>'>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Id_End") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Freq" SortExpression="Freq">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Freq") %>' TextMode="Time"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol4" runat="server" ForeColor="#290F87" Text='<%# Bind("Freq") %>' TextMode="Time"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Freq") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prix" SortExpression="Prix">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Prix") %>' TextMode="Number"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol5" runat="server" ForeColor="#290F87" Text='<%# Bind("Prix") %>' TextMode="Number"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Prix") %>'></asp:Label>
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
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Ligne] WHERE [Num_Ligne] = @original_Num_Ligne AND (([Id_Start] = @original_Id_Start) OR ([Id_Start] IS NULL AND @original_Id_Start IS NULL)) AND (([Id_End] = @original_Id_End) OR ([Id_End] IS NULL AND @original_Id_End IS NULL)) AND (([Freq] = @original_Freq) OR ([Freq] IS NULL AND @original_Freq IS NULL)) AND (([Prix] = @original_Prix) OR ([Prix] IS NULL AND @original_Prix IS NULL))" InsertCommand="INSERT INTO [Ligne] ([Num_Ligne], [Id_Start], [Id_End], [Freq], [Prix]) VALUES (@Num_Ligne, @Id_Start, @Id_End, @Freq, @Prix)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Num_Ligne], [Id_Start], [Id_End], [Freq], [Prix] FROM [Ligne]" UpdateCommand="UPDATE [Ligne] SET [Id_Start] = @Id_Start, [Id_End] = @Id_End, [Freq] = @Freq, [Prix] = @Prix WHERE [Num_Ligne] = @original_Num_Ligne AND (([Id_Start] = @original_Id_Start) OR ([Id_Start] IS NULL AND @original_Id_Start IS NULL)) AND (([Id_End] = @original_Id_End) OR ([Id_End] IS NULL AND @original_Id_End IS NULL)) AND (([Freq] = @original_Freq) OR ([Freq] IS NULL AND @original_Freq IS NULL)) AND (([Prix] = @original_Prix) OR ([Prix] IS NULL AND @original_Prix IS NULL))" OnSelected="SqlDataSource1_Selected">
        <DeleteParameters>
            <asp:Parameter Name="original_Num_Ligne" Type="String" />
            <asp:Parameter Name="original_Id_Start" Type="Int32" />
            <asp:Parameter Name="original_Id_End" Type="Int32" />
            <asp:Parameter DbType="Time" Name="original_Freq" />
            <asp:Parameter Name="original_Prix" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Num_Ligne" Type="String" />
            <asp:Parameter Name="Id_Start" Type="Int32" />
            <asp:Parameter Name="Id_End" Type="Int32" />
            <asp:Parameter DbType="Time" Name="Freq" />
            <asp:Parameter Name="Prix" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_Start" Type="Int32" />
            <asp:Parameter Name="Id_End" Type="Int32" />
            <asp:Parameter DbType="Time" Name="Freq" />
            <asp:Parameter Name="Prix" Type="Double" />
            <asp:Parameter Name="original_Num_Ligne" Type="String" />
            <asp:Parameter Name="original_Id_Start" Type="Int32" />
            <asp:Parameter Name="original_Id_End" Type="Int32" />
            <asp:Parameter DbType="Time" Name="original_Freq" />
            <asp:Parameter Name="original_Prix" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Arret] WHERE [Ar_Id] = @Ar_Id" InsertCommand="INSERT INTO [Arret] ([Ar_Nom]) VALUES (@Ar_Nom)" SelectCommand="SELECT [Ar_Id], [Ar_Nom] FROM [Arret]" UpdateCommand="UPDATE [Arret] SET [Ar_Nom] = @Ar_Nom WHERE [Ar_Id] = @Ar_Id">
        <DeleteParameters>
            <asp:Parameter Name="Ar_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ar_Nom" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ar_Nom" Type="String" />
            <asp:Parameter Name="Ar_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

