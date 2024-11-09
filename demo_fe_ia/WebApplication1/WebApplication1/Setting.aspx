<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="WebApplication1.Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Settings</title>
  <link rel="stylesheet" href="css/css_settings.css">
</head>
<body>
  <div class="container">
    <!-- Sidebar Menu -->
    <aside class="sidebar">
      <h2>Settings</h2>
      <ul>
        <li><a href="#account-info" class="active">Account Information</a></li>
        <li><a href="#notifications">Notifications</a></li>
        <li><a href="#security">Security</a></li>
        <li><a href="#download-history">Download History</a></li>
        <li><a href="#general-settings">General Settings</a></li>
      </ul>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
      <section id="account-info">
        <h3>Account Information</h3>
        <form>
          <div class="form-group">
            <label for="avatar">Avatar</label>
            <input type="file" id="avatar" name="avatar">
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Your username">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Your email">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="New password">
          </div>
          <div class="form-group">
            <label for="bio">Personal Description</label>
            <textarea id="bio" name="bio" placeholder="Write something about yourself"></textarea>
          </div>
          <button type="submit" class="btn-save">Save Changes</button>
        </form>
      </section>
    </main>
  </div>
</body>
</html>

</asp:Content>
