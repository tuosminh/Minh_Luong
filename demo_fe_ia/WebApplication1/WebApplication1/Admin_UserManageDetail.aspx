<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Menu.Master" AutoEventWireup="true" CodeBehind="Admin_UserManageDetail.aspx.cs" Inherits="WebApplication1.Admin_UserManageDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/css_admin_usermanagerdetail.css" rel="stylesheet" />
    <div class="container">
        <div class="header">
            <asp:TextBox ID="TextBox1" CssClass="search-box" runat="server" Placeholder="Search something..."></asp:TextBox>
            <asp:Button ID="Button1" CssClass="search-button" runat="server" Text="Search" OnClick="Button1_Click1" />
            <asp:Button ID="Button2" CssClass="notification-button" runat="server" Text="🔔" />
        </div>

        <div class="form-container">
            <div class="profile-picture"></div>
            <div class="form-fields">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox2" CssClass="input-field" runat="server" Text="User 1"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox3" CssClass="input-field" runat="server" Text="luong@gmail.com"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox4" CssClass="input-field" runat="server" TextMode="Password" Text="123123123"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                    <asp:TextBox ID="TextBox5" CssClass="input-field" runat="server" Text="09999997666"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
                    <asp:TextBox ID="TextBox6" CssClass="input-field" runat="server" Text="User"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Join Date"></asp:Label>
                    <asp:TextBox ID="TextBox7" CssClass="input-field" runat="server" Text="29/09/2024"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Operate Status"></asp:Label>
                    <asp:TextBox ID="TextBox8" CssClass="input-field" runat="server" Text="Online"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="Button3" CssClass="save-button" runat="server" Text="Save" OnClick="Button3_Click1" />
        </div>

        <asp:Label ID="lblMessage" runat="server" CssClass="message-label" Text="" ForeColor="#CC0000"></asp:Label>
    </div>
</asp:Content>

