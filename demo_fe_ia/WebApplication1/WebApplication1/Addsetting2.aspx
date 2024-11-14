<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Addsetting2.aspx.cs" Inherits="WebApplication1.Addsetting2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cài đặt thông báo</title>
    <link rel="stylesheet" href="css/css_addsetting.css">
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="avatar-section">
                <img src="images/a1_admin.jpg" alt="Avatar" class="avatar">
                <div class="username">luongcute</div>
            </div>
            <ul class="menu">
                <li class="menu-item">Cài đặt hồ sơ</li>
                <li class="menu-item active">Cài đặt tài khoản</li>
            </ul>
        </div>
        <div class="content">
            <div class="header">
                <h2>Thông báo</h2>
                <p>Tinh chỉnh các thông báo bạn nhận được trên Inspired Art</p>
            </div>
            <div class="notification-settings">
                <div class="notification-item">
                    <h3>Nhận tin nhắn riêng tư</h3>
                    <p>Gửi email cho tôi khi tôi nhận được tin nhắn riêng tư mới</p>
                    <input type="checkbox" checked>
                </div>
                <div class="notification-item">
                    <h3>Nhận được ý kiến</h3>
                    <p>Gửi email cho tôi khi tôi nhận được bình luận mới trên phương tiện truyền thông của tôi</p>
                    <input type="checkbox" checked>
                </div>
                <div class="notification-item">
                    <h3>Hoạt động sau đây</h3>
                    <p>Gửi email cho tôi khi các tài khoản tôi theo dõi tải lên phương tiện truyền thông mới</p>
                    <input type="checkbox" checked>
                </div>
                <div class="notification-item">
                    <h3>Tin tức và mẹo vặt</h3>
                    <p>Gửi email cho tôi với những tin tức và mẹo mới nhất từ Pixabay</p>
                    <input type="checkbox" checked>
                </div>
                <div class="notification-item">
                    <h3>Thông báo quan trọng</h3>
                    <p>Gửi email cho tôi với các thông báo quan trọng về tài khoản của tôi</p>
                    <input type="checkbox" checked>
                </div>
            </div>
            <button class="save-button">Lưu thay đổi</button>
        </div>
    </div>
</body>
</html>

</asp:Content>
