<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="PgAccounts.aspx.cs" Inherits="PgAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #c7b7ff;
            padding: 5px;
        }

            .tab label {
                display: inline-block;
                margin-bottom: .5rem;
                float: left;
                border: none;
                font-size: small;
                outline: none;
                cursor: pointer;
                padding: 3px 20px;
                border-right: solid #e9e2ff 2px;
                transition: 0.3s;
            }

            .tab button {
                background-color: #c7b7ff;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
            }

            .tab label:hover {
                color: #4b31aa;
            }

            .tab .active {
                color: #290f87;
            }

        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }

        /* Animation */
        @-webkit-keyframes fadeEffect {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeEffect {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }
    </style>
    <script>
        function openTab(evt, tabName) {
            var i, tabcontent, tablinks;

            // Get all elements with class="tabcontent" and hide them
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            // Get all elements with class="tablinks" and remove the class "active"
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            // Show the current tab, and add an "active" class to the button that opened the tab
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";

        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <div class="tab">
        <label id="Label8" class="tablinks" runat="server" onclick="openTab(event, 'Admin')">Admin</label>
        <label id="Label9" class="tablinks" runat="server" onclick="openTab(event, 'Driver')">Driver</label>
        <label id="Label10" class="tablinks" runat="server" onclick="openTab(event, 'Pass')">Passenger</label>

    </div>
    <div class="alert alert-danger fade in alert-dismissible" hidden="hidden">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>
            <i class="glyphicon glyphicon-warning-sign"></i>
            <asp:Label ID="Label2" runat="server" Text="Something went wrong :/"></asp:Label>
        </strong>
    </div>

    <div id="Admin" class="tabcontent">
        <asp:GridView ID="GridViewAccA" CssClass="GridVw" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_Account" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True">
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
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol1" runat="server" ForeColor="#212579"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol2" runat="server" ForeColor="#212579"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type" SortExpression="Type">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="AccType" DataValueField="id" SelectedValue='<%# Bind("Type") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        Admin
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#1A1D5B" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type" InsertCommand="INSERT INTO [Account] ([Email], [Password], [Type]) VALUES (@Email, @Password, @Type)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id_Account], [Email], [Password], [Type] FROM [Account] WHERE ([Type] = @Type)" UpdateCommand="UPDATE [Account] SET [Email] = @Email, [Password] = @Password, [Type] = @Type WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="A" Name="Type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="Driver" class="tabcontent">
        <asp:GridView ID="GridViewAccD" CssClass="GridVw" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="6" DataKeyNames="Id_Account" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" Width="95%" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Add</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol1" runat="server" ForeColor="#212579"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol2" runat="server" ForeColor="#212579" OnTextChanged="TBCol2_TextChanged"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type" SortExpression="Type">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="AccType" DataValueField="id" SelectedValue='<%# Bind("Type") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        Driver
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#1A1D5B" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type" InsertCommand="INSERT INTO [Account] ([Email], [Password], [Type]) VALUES (@Email, @Password, @Type)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id_Account], [Email], [Password], [Type] FROM [Account] WHERE ([Type] = @Type)" UpdateCommand="UPDATE [Account] SET [Email] = @Email, [Password] = @Password, [Type] = @Type WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="D" Name="Type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" SelectCommand="SELECT [id], [AccType] FROM [AccType]"></asp:SqlDataSource>
    </div>

    <div id="Pass" class="tabcontent">
        <asp:GridView ID="GridViewAccP" CssClass="GridVw" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_Account" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Add</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol1" runat="server" ForeColor="#212579"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>' TextMode="Password"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TBCol2" runat="server" ForeColor="#212579"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type" SortExpression="Type">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="AccType" DataValueField="id" SelectedValue='<%# Bind("Type") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        Passenger
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#212579" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#1A1D5B" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type" InsertCommand="INSERT INTO [Account] ([Email], [Password], [Type]) VALUES (@Email, @Password, @Type)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id_Account], [Email], [Password], [Type] FROM [Account] WHERE ([Type] = @Type)" UpdateCommand="UPDATE [Account] SET [Email] = @Email, [Password] = @Password, [Type] = @Type WHERE [Id_Account] = @original_Id_Account AND [Email] = @original_Email AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [Type] = @original_Type">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="P" Name="Type" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="original_Id_Account" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>

