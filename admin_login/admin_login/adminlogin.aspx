<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="admin_login.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Emaillg" runat="server" Text="Email"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Passlg" runat="server" Text="Password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Buttonlogin" runat="server" Text="Log in" OnClick="Buttonlogin_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="ErrorMessage" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
