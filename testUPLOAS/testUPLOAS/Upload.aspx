<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="testUPLOAS.Upload" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Image</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Upload Image</h2>
            <label for="txtTitle">Title:</label>
            <asp:TextBox ID="txtTitle" runat="server" Width="300px" />
            <br /><br />

            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="300px" Height="100px" />
            <br /><br />

            <label for="txtCategory">Category:</label>
            <asp:TextBox ID="txtCategory" runat="server" Width="300px" />
            <br /><br />

            <label for="FileUpload1">Upload Image:</label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />

            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            <br /><br />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
            <asp:Button ID="Button1" runat="server" Text="SHOW" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
