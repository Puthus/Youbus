<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="DriverApp.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <link href="css/LogPage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron" id="Box">
            <h3>Welcome to Youbus Driver App</h3>
            <br />
            <br />
            <asp:TextBox ID="userName" class="form-control input-sm chat-input" runat="server" TextMode="Email" placeholder="Email@klm.xyz"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field !" ControlToValidate="userName" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="userPassword" class="form-control input-sm chat-input" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field !" ControlToValidate="userPassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label>
            <asp:Button runat="server" ID="Btn" OnClick="Btn_OnClick" class="btn btn-primary" Text="Log In" />
        </div>
    </form>
</body>
</html>
