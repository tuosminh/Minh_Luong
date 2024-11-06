<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Menu.Master" AutoEventWireup="true" CodeBehind="Admin_UserManageDetail.aspx.cs" Inherits="WebApplication1.Admin_UserManageDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" />
    <asp:Button ID="Button2" runat="server" Text="Notification" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Join Date"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Operate Status"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click1" />
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="lblMessage" ForeColor="#CC0000"></asp:Label>
    <br />

</asp:Content>
