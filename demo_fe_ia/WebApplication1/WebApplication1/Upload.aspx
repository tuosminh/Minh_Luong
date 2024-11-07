<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication1.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_upload.css" rel="stylesheet" />
    <div class="upload-form">
    <div class="upload-preview">
        <div class="add-icon">+</div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
    
    <div class="form-fields">
        <div class="form-group">
            <asp:Label ID="lbltieude" runat="server" Text="Artwork title"></asp:Label>
            <asp:TextBox ID="txttitle" runat="server" CssClass="text-input" Placeholder="Enter content"></asp:TextBox>
         </div>
        <div class="form-group">
            <asp:Label ID="lbldanhmuc" runat="server" Text="Categories"></asp:Label>
            <asp:TextBox ID="txtLoai" runat="server" CssClass="text-input" Placeholder="Categories"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblmota" runat="server" Text="Artwork description"></asp:Label>
            <asp:TextBox ID="txtmota" runat="server" CssClass="text-input" TextMode="MultiLine" Rows="4" Placeholder="Enter the artwork description"></asp:TextBox>
         </div>
        <div class="form-group">
            <asp:Label ID="lblchonfile" runat="server" Text="Upload art"></asp:Label>
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file-input" />
         </div>
        <div class="form-group">
            <asp:Label ID="lblbanquyen" runat="server" Text="Copyright Certificate"></asp:Label>
            <asp:FileUpload ID="FileUpload3" runat="server" CssClass="file-input" />
        </div>    
      </div>
</div>

<!-- Nút bấm nằm bên dưới khung -->
<div class="post-button-container">
    <asp:Button ID="btndang" runat="server" Text="Post" CssClass="post-button" OnClick="btndang_Click" />
</div>


</asp:Content>
