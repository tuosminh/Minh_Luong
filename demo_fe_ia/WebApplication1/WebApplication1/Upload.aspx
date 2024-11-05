<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication1.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Label ID="lbltieude" runat="server" Text="Artwork Title"></asp:Label><asp:TextBox ID="txttitle" runat="server" OnTextChanged="txttitle_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="lbldanhmuc" runat="server" Text="Categories"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblmota" runat="server" Text="Artwork Description"></asp:Label>
    <asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblchonfile" runat="server" Text="Upload Art"></asp:Label>
    <asp:FileUpload ID="FileUpload2" runat="server" Width="271px" />
    <br />
    <asp:Label ID="lblbanquyen" runat="server" Text="Copyright Certificate"></asp:Label>
    <asp:FileUpload ID="FileUpload3" runat="server" Width="192px" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btndang" runat="server" Text="Post" OnClick="btndang_Click" />
    <br />
</asp:Content>
