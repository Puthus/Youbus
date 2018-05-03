<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UI.aspx.cs" Inherits="DriverApp.UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/MPStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="PT" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocBusConnectionString %>" DeleteCommand="DELETE FROM [Ligne] WHERE [Num_Ligne] = @Num_Ligne" InsertCommand="INSERT INTO [Ligne] ([Num_Ligne]) VALUES (@Num_Ligne)" SelectCommand="SELECT [Num_Ligne] FROM [Ligne]">
                <DeleteParameters>
                    <asp:Parameter Name="Num_Ligne" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Num_Ligne" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LocBusConnectionString %>" DeleteCommand="DELETE FROM [BusStatus] WHERE [Statut] = @Statut" InsertCommand="INSERT INTO [BusStatus] ([Statut]) VALUES (@Statut)" SelectCommand="SELECT [Statut] FROM [BusStatus]">
                <DeleteParameters>
                    <asp:Parameter Name="Statut" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Statut" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>

            <div style="margin: 25% auto">
                <div class="Control">
                    <asp:Label ID="Label1" runat="server" Text="Line Number"></asp:Label><br />
                    <asp:DropDownList ID="Select1" class="DDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="Num_Ligne" DataValueField="Num_Ligne">
                    </asp:DropDownList><br />
                </div>
                <div class="Control">
                    <asp:Label ID="Label2" runat="server" Text="Bus Status"></asp:Label><br />
                    <asp:DropDownList ID="Select2" class="DDL" runat="server" DataSourceID="SqlDataSource2" DataTextField="Statut" DataValueField="Statut">
                        <%-- Fill from the DB --%>
                    </asp:DropDownList><br />
                </div>
                <asp:Button ID="Bnt" runat="server" Text="Send Alert"  class="btn btn-info btn-lg" data-toggle="modal" data-target="#AlertModal"/>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
                <!-- Modal box -->
                <div id="AlertModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Write an alert Message</h4>
                            </div>
                            <div class="modal-body">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Button1" data-dismiss="modal" runat="server" Text="Send Message" />
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
