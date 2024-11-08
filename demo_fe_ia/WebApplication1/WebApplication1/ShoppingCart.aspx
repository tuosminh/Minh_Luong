<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication1.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:DataList ID="db1" runat="server" OnItemCommand="db1_ItemCommand">
        <ItemTemplate>
            <asp:Button ID="btnXoa" runat="server" Text="Delete" CommandName="Xoa" CommandArgument='<%# Eval("Id") %>' />
            <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("Id") %>' ImageUrl='<%# "img_timkiem/" + Eval("ANHSANPHAM") %>' />
            &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("SUBTOTAL") %>'></asp:Label>
            <asp:Button ID="btnMua" runat="server" Text="Buy Now" OnClick="btnMua_Click" />
        </ItemTemplate>
    </asp:DataList>
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Apply Coupon" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Update Cart" OnClick="Button4_Click" />
    <br />
    <asp:Label ID="Label4" runat="server" Text="lblMessage" ForeColor="#CC0000"></asp:Label>
</asp:Content>
