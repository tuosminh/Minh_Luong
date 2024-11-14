<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication1.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_shoppingcart.css" rel="stylesheet" />
    <asp:DataList ID="db1" runat="server" OnItemCommand="db1_ItemCommand" CssClass="cart-list">
        <ItemTemplate>
            <div class="cart-item">
                <asp:Button ID="btnXoa" runat="server" Text="✕" CommandName="Xoa" CommandArgument='<%# Eval("Id") %>' CssClass="delete-button" />
                <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("Id") %>' ImageUrl='<%# "img_timkiem/" + Eval("ANHSANPHAM") %>' CssClass="product-image" />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSANPHAM") %>' CssClass="product-name"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>' CssClass="product-price"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("SUBTOTAL") %>' CssClass="product-subtotal"></asp:Label>
                <asp:Button ID="btnMua" runat="server" Text="Buy Now" OnClick="btnMua_Click" CssClass="buy-button" />
            </div>
        </ItemTemplate>
    </asp:DataList>
    
    <div class="coupon-container">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="coupon-input" Placeholder="Coupon code"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Apply Coupon" OnClick="Button3_Click" CssClass="apply-coupon-button" />
        <asp:Button ID="Button4" runat="server" Text="Update Cart" OnClick="Button4_Click" CssClass="update-cart-button" />
    </div>

    <asp:Label ID="Label4" runat="server" Text="Hãy updated Cart!." ForeColor="#CC0000" CssClass="message-label"></asp:Label>
</asp:Content>

