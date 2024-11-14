<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Chatting.aspx.cs"
    Inherits="WebApplication1.Chatting" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_chatting.css" rel="stylesheet" />



        <asp:Button ID="btnQUAYLAI" runat="server" Text="Back" CssClass="btn-back" />
        <br />
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header mb-2 d-flex p-0">
                        <div class="ava-user-chat me-2">
                            <h3>sgdvslbdgcfiskd</h3>
                        </div>
                        <div class="ava-user">
                            <h5>dyhgbfisdjvb</h5>
                        </div>
                    </div>
                    <div class="card-body d-flex">
                        <div class="user-chat">
                            
                        </div>
                        <div class="content-chat">

                            <div class="chat-container">
                                <asp:DataList ID="dsTINNHAN" runat="server" CssClass="chat-list">
                                    <ItemTemplate>
                                        <div class="chat-item">
                                            <asp:Label ID="lblTINNHAN" runat="server" Text='<%# Eval("TINNHAN") %>'
                                                CssClass="chat-message">
                                            </asp:Label>
                                            <asp:Label ID="lblTHOIGIANNHAN" runat="server"
                                                Text='<%# Eval("THOIGIANNHAN") %>' CssClass="chat-time"></asp:Label>
                                            <asp:Image ID="imgFile" runat="server"
                                                ImageUrl='<%# Eval("FILETINNHAN", "~/UploadedFiles/" + Eval("FILETINNHAN")) %>'
                                                Visible='<%# Eval("FILETINNHAN") != DBNull.Value %>'
                                                CssClass="chat-image" />
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="input-chat">
                                <div class="chat-input-container">
                                    <!-- sửa -->
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload" />
                                    <asp:TextBox ID="txtTINNHAN" runat="server" CssClass="chat-input"
                                        placeholder="Type a message...">
                                    </asp:TextBox>
                                    <asp:Button ID="btnGui" runat="server" Text="Send" CssClass="btn-send"
                                        OnClick="btnGui_Click" />
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </div>


    </asp:Content>