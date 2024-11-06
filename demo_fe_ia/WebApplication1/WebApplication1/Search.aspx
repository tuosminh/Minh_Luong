<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication1.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" href="css/css_search.css">
     <div class="search-bar">
        <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
    </div>
    <br />

   <!--<asp:Label ID="Label2" runat="server" Text="Recent Searches"></asp:Label>-->
    <div class="recent-searches">
        <h3>Recent Searches</h3>
        <div class="tags">
            <span class="tag">Flower</span>
            <span class="tag">Landscape Art</span>
        </div>
    </div>
    <br />
    <br />
    <div class="recommended-section">
    <asp:Label ID="Label3" runat="server" Text="Recommended for you"></asp:Label>
    <br />
    <div class="recommended-grid">
       <asp:DataList ID="DB1" runat="server" RepeatColumns="4">
    <ItemTemplate>
        <div class="datalist-item">
            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' 
                             ImageUrl='<%# "img_timkiem/" + Eval("IMG") %>' />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' 
                            Text='<%# Eval("TENTACPHAM") %>'></asp:LinkButton>
        </div>
    </ItemTemplate>
</asp:DataList>

    </div>
    <br />
</div>
    </asp:Content>
