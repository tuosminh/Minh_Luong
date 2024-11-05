<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_LoginMain.aspx.cs" Inherits="WebApplication1.Admin_LoginMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 </div>
 <asp:Label ID="Emaillg" runat="server" Text="Email"></asp:Label><asp:TextBox ID="txtEmailAM" runat="server"></asp:TextBox>
 <br />
 <asp:Label ID="Passlg" runat="server" Text="Password"></asp:Label><asp:TextBox ID="txtPassAM" runat="server"></asp:TextBox>
 <br />
 <asp:Button ID="Buttonlogin" runat="server" Text="Log in" OnClick="Buttonlogin_Click" />
 <br />
 <asp:Label ID="lblMessage" runat="server" Text="ErrorMessage" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
