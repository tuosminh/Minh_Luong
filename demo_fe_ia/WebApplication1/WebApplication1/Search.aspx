<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication1.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Recent Searches"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Recommended for you"></asp:Label>
    <br />
    <asp:DataList ID="DB1" runat="server">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' ImageUrl='<%# "img_timkiem/"+ Eval("IMG") %>' />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' Text='<%# Eval("TENTACPHAM") %>'></asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
    <br />
    </asp:Content>
