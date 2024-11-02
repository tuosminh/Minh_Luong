<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication1.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:Button ID="btnthemanh" runat="server" Text="+" />
    <asp:Label ID="lbltieude" runat="server" Text="Artwork Title"></asp:Label><asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbldanhmuc" runat="server" Text="Categories"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblmota" runat="server" Text="Artwork Description"></asp:Label>
    <asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblchonfile" runat="server" Text="Upload Art"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Choose File" />
    <br />
    <asp:Label ID="lblbanquyen" runat="server" Text="Copyright Certificate"></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Choose File" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btndang" runat="server" Text="Post" />
    <br />
</asp:Content>
