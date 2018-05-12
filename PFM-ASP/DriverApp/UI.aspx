<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UI.aspx.cs" Inherits="DriverApp.UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/MPStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="PT" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString %>" DeleteCommand="DELETE FROM [Ligne] WHERE [Num_Ligne] = @Num_Ligne" InsertCommand="INSERT INTO [Ligne] ([Num_Ligne], [Freq], [Prix], [Id_Start], [Id_End]) VALUES (@Num_Ligne, @Freq, @Prix, @Id_Start, @Id_End)" SelectCommand="SELECT [Num_Ligne], [Freq], [Prix], [Id_Start], [Id_End] FROM [Ligne]" UpdateCommand="UPDATE [Ligne] SET [Freq] = @Freq, [Prix] = @Prix, [Id_Start] = @Id_Start, [Id_End] = @Id_End WHERE [Num_Ligne] = @Num_Ligne">
                <DeleteParameters>
                    <asp:Parameter Name="Num_Ligne" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Num_Ligne" Type="String" />
                    <asp:Parameter DbType="Time" Name="Freq" />
                    <asp:Parameter Name="Prix" Type="Double" />
                    <asp:Parameter Name="Id_Start" Type="Int32" />
                    <asp:Parameter Name="Id_End" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Time" Name="Freq" />
                    <asp:Parameter Name="Prix" Type="Double" />
                    <asp:Parameter Name="Id_Start" Type="Int32" />
                    <asp:Parameter Name="Id_End" Type="Int32" />
                    <asp:Parameter Name="Num_Ligne" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YoubusConnectionString2 %>" DeleteCommand="DELETE FROM [BusStatus] WHERE [Status_Name] = @Status_Name" InsertCommand="INSERT INTO [BusStatus] ([Status_Name]) VALUES (@Status_Name)" SelectCommand="SELECT [Status_Name] FROM [BusStatus]">
                <DeleteParameters>
                    <asp:Parameter Name="Status_Name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Status_Name" Type="String" />
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
                    <asp:DropDownList ID="Select2" class="DDL" runat="server" DataSourceID="SqlDataSource2" DataTextField="Status_Name" DataValueField="Status_Name">
                        <%-- Fill from the DB --%>
                    </asp:DropDownList><br />
                </div>
                <asp:Button ID="Bnt" runat="server" Text="Send Alert" class="btn btn-info btn-lg" data-toggle="modal" data-target="#AlertModal" />

                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
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
                <asp:Button ID="Button2" runat="server" OnClick="Bnt_Click" Text="Button" class="btn btn-primary"/>

                <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>
                <!-- Modal box -->
                <%--                <div id="AlertModal" class="modal fade" role="dialog">
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
                </div>--%>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function Bnt_Click() {
            alert("Fuck");
        }
    </script>

</body>
</html>
