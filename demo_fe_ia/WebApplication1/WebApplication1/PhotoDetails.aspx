<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="PhotoDetails.aspx.cs" Inherits="WebApplication1.PhotoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_photodetails.css" rel="stylesheet" />
    <!-- Phần hiển thị thông tin bài đăng -->
<div class="author-section p-0">
    <div class="row">
        <div class="icon-container">
            <button class="icon-button heart-icon"></button>
            <button class="icon-button dot-icon"></button>
        </div>
        <div class="col-lg-5">

               <asp:Image ID="anhbaidang" runat="server" CssClass="anhBaiDang"/>
        </div>
        <div class="col-lg-7">
            <div class="sang-top">
                <asp:Label ID="lblTenbaidang" runat="server" Text="Label"></asp:Label>
            </div>
            <asp:Label ID="lblMota" runat="server" Text="Label"></asp:Label>
            <div class="col-lg-9">
                <asp:ImageButton ID="AVATARTACGIA" runat="server" CssClass="author-avatar" />
                <asp:LinkButton ID="TENTACGIA" runat="server" CssClass="author-name">LinkButton</asp:LinkButton>
                <asp:Button ID="btnFollow" runat="server" Text="Follow" CssClass="follow-button" />
            </div>
        </div>
    </div>
</div>
<!-- Phần hiển thị bình luận -->
<div class="comment-section">
    <h1 class="comment-title">Comment</h1>
    <p>
        <asp:DataList ID="dsCmtuser" runat="server" CssClass="comment-list">
            <ItemTemplate>
                <div class="comment-item">
                    <asp:Image ID="imguser" runat="server" CssClass="user-avatar" />
                    <asp:Label ID="lbltencmtuser" runat="server" CssClass="user-name" Text='<%# Eval("TENCMUSER") %>'></asp:Label>
                    <br />
                    <asp:Label ID="lblbinhluanuser" runat="server" CssClass="user-comment" Text='<%# Eval("BINHLUANUSER") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </p>

    <asp:DataList ID="dsCmtotheruser" runat="server" Width="527px" CssClass="comment-list">
        <ItemTemplate>
            <div class="comment-item">
                <!-- Ảnh đại diện của người bình luận -->
                <asp:Image ID="AVATARUSER" runat="server" ImageUrl='<%# "anhCMOTHER/" + Eval("IMGCMOTHER") %>' Width="40px" Height="40px" CssClass="user-avatar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <!-- Tên người bình luận -->
                <asp:Label ID="TENNGUOIDUNG" runat="server" CssClass="user-name" Text='<%# Eval("TENCMOTHER") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="btn3cham" runat="server" Text="..." CssClass="options-button" />

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <!-- Nội dung bình luận -->
                <asp:Label ID="lblComment" runat="server" CssClass="user-comment" Text='<%# Eval("BINHLUANCMOTHER") %>'></asp:Label>
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>

    <!-- Phần thêm bình luận mới -->
    <h3 class="add-comment-title">Thêm bình luận mới</h3>
    <div class="add-comment-section">
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img_timkiem/" + Eval("AVATARUSER") %>' Width="40px" Height="40px" CssClass="user-avatar" />
        &nbsp;<asp:TextBox ID="txtbinhluan" runat="server" placeholder="Nhập bình luận của bạn..." CssClass="comment-input"></asp:TextBox>
        <asp:Button ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" CssClass="send-button" />
    </div>
</div>

<!-- Hiển thị thông báo thành công hoặc lỗi -->
<asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000" Visible="False" CssClass="message-label"></asp:Label>

</asp:Content>
