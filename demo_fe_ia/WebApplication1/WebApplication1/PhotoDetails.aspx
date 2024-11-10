<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="PhotoDetails.aspx.cs" Inherits="WebApplication1.PhotoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <!-- Phần hiển thị thông tin bài đăng -->
    <asp:Image ID="anhbaidang" runat="server" />
    <asp:Label ID="lblTenbaidang" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblMota" runat="server" Text="Label"></asp:Label>
    <br />

    <asp:ImageButton ID="AVATARTACGIA" runat="server" />
    &nbsp;<asp:LinkButton ID="TENTACGIA" runat="server">LinkButton</asp:LinkButton>
    <asp:Button ID="btnFollow" runat="server" Text="Follow" />
    
    <!-- Phần hiển thị bình luận -->
    <h1>Comment</h1>
    <p>
        <asp:DataList ID="dsCmtuser" runat="server">
            <ItemTemplate>
                <asp:Image ID="imguser" runat="server" />
                <asp:Label ID="lbltencmtuser" runat="server" Text='<%# Eval("TENCMTUSER") %>'></asp:Label>
           
                <br />
                <asp:Label ID="lblbinhluanuser" runat="server" Text='<%# Eval("BINHLUANUSER") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:DataList ID="dsCmtotheruser" runat="server" Width="527px">
        <ItemTemplate>
            <div class="comment-item">
                  <!-- Ảnh đại diện của người bình luận -->
            <asp:Image ID="AVATARUSER" runat="server" ImageUrl='<%# "anhCMOTHER/" + Eval("IMGCMOTHER") %>' Width="40px" Height="40px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <!-- Tên người bình luận -->
            <asp:Label ID="TENNGUOIDUNG" runat="server" Text='<%# Eval("TENCMOTHER") %>'></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;

                  <asp:Button ID="btn3cham" runat="server" Text="..." />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <!-- Nội dung bình luận -->
            <asp:Label ID="lblComment" runat="server" Text='<%# Eval("BINHLUANCMOTHER") %>'></asp:Label>
            <br />
            </div>
        </ItemTemplate>
    </asp:DataList>

    <!-- Phần thêm bình luận mới -->
    <h3>Thêm bình luận mới</h3>
    <asp:Image ID="AVATARUSER" runat="server" ImageUrl='<%# "img_timkiem/" + Eval("AVATARUSER") %>' Width="40px" Height="40px" />
    &nbsp;<asp:TextBox ID="txtbinhluan" runat="server" placeholder="Nhập bình luận của bạn..."></asp:TextBox>
    <asp:Button ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" />
    
    <!-- Hiển thị thông báo thành công hoặc lỗi -->
    <asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
</asp:Content>
