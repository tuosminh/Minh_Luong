<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="WebApplication1.Home" %>


    <asp:Content ID="Home" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_home.css" rel="stylesheet" />
        <div class="container">
            <div class="row mb-3">
                <div id="carouselExampleIndicators" class="carousel slide p-0">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/img_home/1.jpg" style="height: 400px" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/img_home/2.jpg" style="height: 400px" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/img_home/3.jpg" style="height: 400px" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <div class="box box1 row mb-5">
                <div class="col-lg-12 p-0">
                    <div class="card">
                        <div class="row d-flex">
                            <div class=" col-lg-6 col-md-12 d-flex align-items-center">
                                <div class="ctn p-4 ps-5 d-flex flex-column justify-content-center">
                                    <h2>Music is the voice of emotions</h2>
                                    <p class="m-0">Melodies guide the mind through emotions, touching the soul with
                                        every
                                        note.
                                    </p>
                                    <div class="m-3 d-flex justify-content-center">
                                        <asp:Button ID="Button1" runat="server" Text="Discover" CssClass="btn-custom"
                                            OnClick="ButtonMelody_Click" />

                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="box m-5">
                                    <div class="img-box">
                                        <span style="--i:1">
                                            <img src="images/img_home/2.jpg" class="img-items" /></span>
                                        <span style="--i:2">
                                            <img src="images/img_home/3.jpg" class="img-items" /></span>
                                        <span style="--i:3">
                                            <img src="images/img_home/4.jpg" class="img-items" /></span>
                                        <span style="--i:4">
                                            <img src="images/img_home/5.jpg" class="img-items" /></span>
                                        <span style="--i:5">
                                            <img src="images/img_home/6.jpg" class="img-items" /></span>
                                        <span style="--i:6">
                                            <img src="images/img_home/7.jpg" class="img-items" /></span>
                                        <span style="--i:7">
                                            <img src="images/img_home/8.jpg" class="img-items" /></span>
                                        <span style="--i:8">
                                            <img src="images/img_home/9.jpg" class="img-items" /></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="box box2 row mb-5">
                <div class="col-lg-12 p-0">
                    <div class="card p-4">
                        <div class="row d-flex">
                            <div class="col-lg-6 col-md-12 p-3 d-flex align-items-center justify-content-center">
                                <div class="img-box">
                                    <img src="images/img_home/4.jpg" class="img-items" />
                                    <img src="images/img_home/5.jpg" class="img-items" />
                                    <img src="images/img_home/6.jpg" class="img-items" />
                                    <img src="images/img_home/8.jpg" class="img-items" />
                                    <img src="images/img_home/9.jpg" class="img-items" />
                                </div>
                            </div>
                            <div class=" col-lg-6 col-md-12 p-3 d-flex align-items-center">
                                <div class="ctn p-4 d-flex flex-column justify-content-center">
                                    <h2>Creative vision unlocks freedom</h2>
                                    <p class="m-0">Unfolding a journey of discovery, where each detail evokes emotions.
                                    </p>
                                    <div class="m-3 d-flex justify-content-center">
                                        <asp:Button ID="Button2" runat="server" Text="Discover" CssClass="btn-custom"
                                            OnClick="ButtonPhotos_Click" />
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </asp:Content>