<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Chatting.aspx.cs" Inherits="WebApplication1.Chatting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_chatting.css" rel="stylesheet" />
    <asp:Button ID="btnQUAYLAI" runat="server" Text="Back" CssClass="btn-back" />
<br />
<div class="chat-container">
    <asp:DataList ID="dsTINNHAN" runat="server" CssClass="chat-list">
        <ItemTemplate>
            <div class="chat-item">
                <asp:Label ID="lblTINNHAN" runat="server" Text='<%# Eval("TINNHAN") %>' CssClass="chat-message"></asp:Label>
                <asp:Label ID="lblTHOIGIANNHAN" runat="server" Text='<%# Eval("THOIGIANNHAN") %>' CssClass="chat-time"></asp:Label>
                <asp:Image ID="imgFile" runat="server" 
                    ImageUrl='<%# Eval("FILETINNHAN", "~/UploadedFiles/" + Eval("FILETINNHAN")) %>' 
                    Visible='<%# Eval("FILETINNHAN") != DBNull.Value %>' CssClass="chat-image"/>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
<div class="chat-input-container">
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload" />
    <asp:TextBox ID="txtTINNHAN" runat="server" CssClass="chat-input" placeholder="Type a message..."></asp:TextBox>
    <asp:Button ID="btnGui" runat="server" Text="Send" CssClass="btn-send" OnClick="btnGui_Click" />
</div>
<br />


</asp:Content>
