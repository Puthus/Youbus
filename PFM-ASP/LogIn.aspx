<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <link href="css/LogPage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Box">
        <h4>Welcome to Youbus Administration App</h4><br />        
            <asp:TextBox ID="userName" class="form-control input-sm chat-input" runat="server" TextMode="Email" placeholder="Aze@klm.xyz" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field !" ControlToValidate="userName" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br/>
            <asp:TextBox ID="userPassword" class="form-control input-sm chat-input" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field !" ControlToValidate="userPassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br/>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label>
            <div class="wrapper">
            <div class="group-btn">
                <asp:Button ID="Btn" runat="server" Text="LogIn" PostBackUrl="~/Default.aspx" OnClientClick="Btn_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
