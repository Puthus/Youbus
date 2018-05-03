<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="PgBuses.aspx.cs" Inherits="PgBuses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #GridView1{
            padding:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <asp:GridView ID="GridView1" CssClass="GridVw" runat="server" AutoGenerateColumns="False" CellPadding="20" DataKeyNames="B_Matricule" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="95%" Height="3%" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Add</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="B_Matricule" SortExpression="B_Matricule">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("B_Matricule") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TBCol1" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("B_Matricule") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="B_Type" SortExpression="B_Type">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("B_Type") %>'>
                        <asp:ListItem>Bus</asp:ListItem>
                        <asp:ListItem>Minibus</asp:ListItem>
                        <asp:ListItem>Tourist bus</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DDCol2" runat="server" SelectedValue='<%# Bind("B_Type") %>'>
                        <asp:ListItem>Bus</asp:ListItem>
                        <asp:ListItem>Minibus</asp:ListItem>
                        <asp:ListItem>Tourist bus</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("B_Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="B_Account" SortExpression="B_Account">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Email" DataValueField="Id_Account">
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DDCol3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Email" DataValueField="Id_Account">
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("B_Account") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="B_Status" SortExpression="B_Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Status_Name" DataValueField="Status_Name" SelectedValue='<%# Bind("B_Status") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DDCol4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Status_Name" DataValueField="Status_Name" SelectedValue='<%# Bind("B_Status") %>'>
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("B_Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Num_Ligne" SortExpression="Num_Ligne">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Num_Ligne" DataValueField="Num_Ligne" SelectedValue='<%# Bind("B_Status") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Num_Ligne" DataValueField="Num_Ligne" SelectedValue='<%# Bind("B_Status") %>'>
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Num_Ligne") %>'></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Bus] WHERE [B_Matricule] = @original_B_Matricule AND (([B_Type] = @original_B_Type) OR ([B_Type] IS NULL AND @original_B_Type IS NULL)) AND (([B_Account] = @original_B_Account) OR ([B_Account] IS NULL AND @original_B_Account IS NULL)) AND (([B_Status] = @original_B_Status) OR ([B_Status] IS NULL AND @original_B_Status IS NULL)) AND (([Num_Ligne] = @original_Num_Ligne) OR ([Num_Ligne] IS NULL AND @original_Num_Ligne IS NULL))" InsertCommand="INSERT INTO [Bus] ([B_Matricule], [B_Type], [B_Account], [B_Status], [Num_Ligne]) VALUES (@B_Matricule, @B_Type, @B_Account, @B_Status, @Num_Ligne)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [B_Matricule], [B_Type], [B_Account], [B_Status], [Num_Ligne] FROM [Bus]" UpdateCommand="UPDATE [Bus] SET [B_Type] = @B_Type, [B_Account] = @B_Account, [B_Status] = @B_Status, [Num_Ligne] = @Num_Ligne WHERE [B_Matricule] = @original_B_Matricule AND (([B_Type] = @original_B_Type) OR ([B_Type] IS NULL AND @original_B_Type IS NULL)) AND (([B_Account] = @original_B_Account) OR ([B_Account] IS NULL AND @original_B_Account IS NULL)) AND (([B_Status] = @original_B_Status) OR ([B_Status] IS NULL AND @original_B_Status IS NULL)) AND (([Num_Ligne] = @original_Num_Ligne) OR ([Num_Ligne] IS NULL AND @original_Num_Ligne IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_B_Matricule" Type="String" />
            <asp:Parameter Name="original_B_Type" Type="String" />
            <asp:Parameter Name="original_B_Account" Type="Int32" />
            <asp:Parameter Name="original_B_Status" Type="String" />
            <asp:Parameter Name="original_Num_Ligne" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="B_Matricule" Type="String" />
            <asp:Parameter Name="B_Type" Type="String" />
            <asp:Parameter Name="B_Account" Type="Int32" />
            <asp:Parameter Name="B_Status" Type="String" />
            <asp:Parameter Name="Num_Ligne" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="B_Type" Type="String" />
            <asp:Parameter Name="B_Account" Type="Int32" />
            <asp:Parameter Name="B_Status" Type="String" />
            <asp:Parameter Name="Num_Ligne" Type="String" />
            <asp:Parameter Name="original_B_Matricule" Type="String" />
            <asp:Parameter Name="original_B_Type" Type="String" />
            <asp:Parameter Name="original_B_Account" Type="Int32" />
            <asp:Parameter Name="original_B_Status" Type="String" />
            <asp:Parameter Name="original_Num_Ligne" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [Id_Account], [Email] FROM [Account] WHERE ([Type] = @Type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="D" Name="Type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [Status_Name] FROM [BusStatus]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [Num_Ligne] FROM [Ligne]"></asp:SqlDataSource>
</asp:Content>

