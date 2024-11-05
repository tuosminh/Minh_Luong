<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Test_upload.aspx.cs" Inherits="WebApplication1.Test_upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OnSelecting="ObjectDataSource2_Selecting"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Photo">
        </asp:DropDownList>
    </p>
</asp:Content>
