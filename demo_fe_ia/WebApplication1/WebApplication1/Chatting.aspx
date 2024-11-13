<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Chatting.aspx.cs" Inherits="WebApplication1.Chatting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:Button ID="btnQUAYLAI" runat="server" Text="Button" />
    <br />
    <asp:DataList ID="dsTINNHAN" runat="server">
        <ItemTemplate>
            <asp:Label ID="lblTINNHAN" runat="server" Text='<%# Eval("TINNHAN") %>'></asp:Label>
            <asp:Label ID="lblTHOIGIANNHAN" runat="server" Text='<%# Eval("THOIGIANNHAN") %>'></asp:Label>
            <br />
            <%-- Display the file as a link if it exists --%>
    <asp:Image ID="imgFile" runat="server" 
                   ImageUrl='<%# Eval("FILETINNHAN", "~/UploadedFiles/" + Eval("FILETINNHAN")) %>' 
                   Visible='<%# Eval("FILETINNHAN") != DBNull.Value %>' />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:TextBox ID="txtTINNHAN" runat="server"></asp:TextBox>
    <asp:Button ID="btnGui" runat="server" Text="Button" OnClick="btnGui_Click" />
    <br />
</asp:Content>
