<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="testUPLOAS.Display" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Uploaded Images</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Uploaded Images</h2>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <h3><%# Eval("TENBAIVIET") %></h3>
                    <p><%# Eval("MOTA") %></p>
                    <asp:ImageButton ID="imgButton" runat="server" ImageUrl='<%# "data:image/jpeg;base64," + Convert.ToBase64String((byte[])Eval("HINHANH")) %>' 
                                     Width="200px" Height="200px" />
                    <br />
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
