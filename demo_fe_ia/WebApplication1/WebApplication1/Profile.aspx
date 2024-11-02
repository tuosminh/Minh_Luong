<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs"
    Inherits="WebApplication1.Profile" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_profile.css" rel="stylesheet" />

        <div class="container">
            <div class="ava_header row mb-5">
                <div class="col-sm-12">
                    <div class="ava card">
                        <div class="avatar d-flex flex-column">
                            <%--ảnh bìa đổ dữ liệu--%>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/img-home/1.jpg" CssClass="coverPhoto"/>
                            
                            <div class="row mb-3">
                                <div class="col-lg-6 p-0 mt-3">
                                    <div class="user d-flex">
                                        <div class="profile-img">
                                            <%--avatar đổ dữ liệu--%>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.jpg"
                                                AlternateText="Avatar Image" />
                                        </div>
                                        <div class="profile-detail mt-3 d-flex flex-column justify-content-center">
                                            <h3 class="text-nowrap">Ly Ly</h3>
                                            <p class="mt-1">follow</p>
                                        </div>
                                    </div>
                                   
                                </div>
                                <div class="col-lg-6 p-0 mt-3 d-flex align-items-center ">
                                    <div class="upload d-flex justify-content-center text-center w-100">
                                        <%--button upload--%>
                                        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn_upload" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="submenu row">
                <div class="col-lg-12">
                    <div class="card p-2">
                        <ul class="nav nav-pills nav-fill text-nowrap">
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content1', this)">Post</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content2', this)">Following</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content3', this)">Follower</button>
                            </li>
                            <li class="nav-item">
                                <button type="button" onclick="showContent('content4', this)">Edit Profile</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Nội dung của từng menu phụ -->
            <div id="content1" class="menu-content" style="display:block;">
                <div class="row d-flex justify-content-between">
                    <!-- introduce -->
                    <div class="intro col-lg-3">
                        <div class="card">
                            <div class="card-header d-flex justify-content-center p-3">
                                <h5 class="m-0">Introduce</h5>
                            </div>
                            <div class="card-body">
                                <%--label giới thiệu--%>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="card-footer d-flex justify-content-center">
                                <%--button chỉnh sửa phần giới thiệu--%>
                                <asp:Button ID="Button2" runat="server" Text="Edit introduction" CssClass="btn_intro" />
                            </div>
                        </div>
                    </div>

                    <div class="post col-lg-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <%--datalist--%>




                            </div>

                        </div>

                    </div>
                </div>
            </div>





            <div id="content2" class="menu-content" style="display:none;">
                <%--datalist--%>
            </div>
            <div id="content3" class="menu-content" style="display:none;">
                <%--datalist--%>
            </div>
            <div id="content4" class="menu-content" style="display:none;">
                <h3>Nội dung Submenu 4</h3>
                <p>Đây là nội dung cho Submenu 4.</p>
            </div>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

        <script src="js/js_profile.js"></script>


    </asp:Content>




<%--<div class="card">
                                            <!-- card-body -->
                                            <div class="card-body">
                                                <div class="row m-0">
                                                    <div class="col-lg-12">
                                                        <div class="cnt card">
                                                            <div class="row w-100">
                                                                <div class="col-lg-5">
                                                                    <asp:ImageButton ID="ImageButton1" runat="server"
                                                                        CssClass="img_post"
                                                                        AlternateText="Post Image" Width="708px" />

                                                                </div>
                                                                <div class="ctn-post col-lg-7">
                                                                    <div class="card">
                                                                        <div
                                                                            class="card-header d-flex justify-content-between align-items-center">
                                                                            <asp:Label ID="Label2" runat="server"
                                                                                Text='<%# Eval("TENBAIVIET") %>' CssClass="title_post"></asp:Label>
                                                                            <i class="fa-regular fa-image"></i>
                                                                        </div>
                                                                        <div class="card-body">
                                                                            <asp:Label ID="Label3" runat="server"
                                                                                Text="Label tdgjuhkjhgcxerydtfuygi">
                                                                            </asp:Label>
                                                                        </div>
                                                                        <div
                                                                            class="card-footer d-flex justify-content-between align-items-center">

                                                                            <button type="button">
                                                                                <i
                                                                                    class="items-heart fa-regular fa-heart"></i>
                                                                            </button>
                                                                            <button type="button">
                                                                                <i
                                                                                    class="items-comment fa-regular fa-comment"></i>
                                                                            </button>
                                                                            <button type="button">
                                                                                <i
                                                                                    class="items-navi fa-solid fa-ellipsis"></i>
                                                                            </button>


                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">

                                            </div>
                                        </div>--%>
                               
<!-- <div class="pt card p-3">
                                    <div class="card-body p-0">
                                        <div class="row m-0">
                                            <div class="col-lg-12">
                                                <div class="cnt card">
                                                    <div class="row w-100">
                                                        <div class="col-lg-5">
                                                            <asp:ImageButton ID="ImageButton1" runat="server"
                                                                CssClass="img_post" ImageUrl="images/img-home/3.jpg"
                                                                AlternateText="Post Image" />

                                                        </div>
                                                        <div class="ctn-post col-lg-7">
                                                            <div class="card">
                                                                <div
                                                                    class="card-header d-flex justify-content-between align-items-center">
                                                                    <asp:Label ID="Label2" runat="server" Text="tiêu đề"
                                                                        CssClass="title_post">
                                                                    </asp:Label>
                                                                    <i class="fa-regular fa-image"></i>
                                                                </div>
                                                                <div class="card-body">
                                                                    <asp:Label ID="Label3" runat="server"
                                                                        Text="Label tdgjuhkjhgcxerydtfuygi"></asp:Label>
                                                                </div>
                                                                <div
                                                                    class="card-footer d-flex justify-content-between align-items-center">

                                                                    <button type="button">
                                                                        <i class="items-heart fa-regular fa-heart"></i>
                                                                    </button>
                                                                    <button type="button">
                                                                        <i
                                                                            class="items-comment fa-regular fa-comment"></i>
                                                                    </button>
                                                                    <button type="button">
                                                                        <i class="items-navi fa-solid fa-ellipsis"></i>
                                                                    </button>


                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-center align-content-center">
                                        <div class="cmt w-100 d-flex justify-content-center">

                                            <asp:ImageButton ID="ImageButton2" runat="server"
                                                ImageUrl="images/img-home/3.jpg" CssClass="imageAvaComment" />

                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="Comment"></asp:TextBox>
                                        </div>
                                    </div>
                                </div> -->