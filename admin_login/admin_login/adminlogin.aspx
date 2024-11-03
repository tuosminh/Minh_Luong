<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="admin_login.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/css_login.css">
</head>
<body>
    <div class="image-left">
        <img src="images/a_lg.jpg" alt="Left Image">
    </div>

    <form id="form1" runat="server">

        <div>
        </div>
        <h1>Log in</h1>
       
        <asp:Label ID="Emaillg" runat="server" Text="Email"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Passlg" runat="server" Text="Password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Buttonlogin" runat="server" Text="Log in" OnClick="Buttonlogin_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="ErrorMessage" ForeColor="Red"></asp:Label>
    </form>
    <div class="image-right">
        <img src="images/b_lg.jpg" alt="Right Image">
    </div>
</body>
</html>
