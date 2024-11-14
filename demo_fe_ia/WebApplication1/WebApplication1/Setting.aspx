<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="WebApplication1.Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile Settings</title>
    <link href="css/css_settings.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="avatar-section">
                <img src="images/a1_admin.jpg" alt="User Avatar" class="avatar">
                <p class="username">luongcute</p>
            </div>
            <ul class="menu">
                <li class="menu-item active">Cài đặt hồ sơ</li>
                <li class="menu-item">Cài đặt tài khoản</li>
            </ul>
        </div>
        
        <div class="content">
            <div class="header">
                <img src="cover.png" alt="Cover Image" class="cover-image">
                <button class="edit-cover">Chỉnh sửa bìa</button>
            </div>
            <form class="profile-form">
                <div class="form-group">
                    <label for="username">Tên người dùng</label>
                    <input type="text" id="username" value="luongcute" readonly>
                    <p class="note">Điều này sẽ được hiển thị trên hồ sơ của bạn</p>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label for="first-name">Tên đầu tiên</label>
                        <input type="text" id="first-name" placeholder="Nhập tên của bạn">
                    </div>
                    <div class="form-group">
                        <label for="last-name">Họ</label>
                        <input type="text" id="last-name" placeholder="Nhập họ của bạn">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="about">Về tôi</label>
                    <textarea id="about" placeholder="Trong một vài từ, hãy cho chúng tôi biết về bạn"></textarea>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label for="country">Quốc gia</label>
                        <input type="text" id="country" value="Vietnam">
                    </div>
                    <div class="form-group">
                        <label for="city">Thành phố</label>
                        <input type="text" id="city" placeholder="Nhập thành phố của bạn">
                    </div>
                </div>
                
                <button type="submit" class="save-button">Lưu thay đổi</button>
            </form>
        </div>
    </div>
</body>
</html>


</asp:Content>
