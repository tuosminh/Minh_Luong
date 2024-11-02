<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IA - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="css/css_login.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
            <div id="container"></div>
            <div class="wrapper">
            <!-- Background animation spans -->
            <span class="bg-animate"></span>
            <span class="bg-animate2"></span>

            <!-- Login form container -->
            <div class="form-box login">
                <h2 class="animation" style="--data:0;">Login</h2>
                
                <!-- Thêm Label cho thông báo lỗi -->
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" CssClass="error-message"></asp:Label>
                
                <form action="#">
                    <!-- Username input -->
                    <div class="input-box animation" style="--data:1;">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Username</label>
                        <i class="fa-solid fa-user"></i> <!-- User icon -->
                    </div>

                    <!-- Password input -->
                    <div class="input-box animation" style="--data:3;">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>

                    <div class="checkbox-container animation mb-3" style="--data:4;">
                        <asp:CheckBox ID="chkRemember" runat="server" CssClass="custom-checkbox" />
                        <span class="ms-2">Remember me</span> 
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn animation" OnClick="btnLogin_Click" style="--data:5" type="submit"/>

                    <!-- Link to sign-up form -->
                    <div class="reg-link animation" style="--data:6;">
                        <p>Don't have an account? <a href="#" class="signup-link">Sign Up</a></p>
                    </div>
                </form>
            </div>

            <!-- Welcome back message for login -->
            <div class="info-text login">
                <h1 class="animation" style="--data:1;">Welcome To IA</h1>
                <p class="animation" style="--data:2">Igniting creativity is the first step to unlocking the world of art – where each piece tells its own story.</p>
            </div>

            <!-- Sign-Up form container -->
            <div class="form-box signup">
                <h2 class="animation">Sign Up</h2>
                <form action="#">
                    <!-- Username input -->
                    <div class="input-box animation" style="--data:17">
                        <asp:TextBox ID="txtSignupUsername" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Username</label>
                        <i class="fa-solid fa-user"></i> <!-- User icon -->
                    </div>

                    <!-- Email input -->
                    <div class="input-box animation" style="--data:18">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Email</label>
                        <i class="fa-solid fa-envelope"></i> <!-- Envelope icon -->
                    </div>

                    <!-- Password input -->
                    <div class="input-box animation" style="--data:19">
                        <asp:TextBox ID="txtSignupPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>
                    <!-- confirm Password -->
                    <div class="input-box animation" style="--data:20">
                        <asp:TextBox ID="txtSignupPasswordAgain" runat="server" TextMode="Password" CssClass="form-control" placeholder="" required></asp:TextBox>
                        <label>Confirm password</label>
                        <i class="fa-solid fa-lock"></i> <!-- Lock icon -->
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn animation" style="--data:21" OnClick="btnSignup_Click" type="submit"/>

                    <!-- Link to login form -->
                    <div class="reg-link animation" style="--data:22">
                        <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                    </div>
                </form>
            </div>

            <!-- Welcome back message for signup -->
            <div class="info-text signup">
                <h1 class="animation" style="--data:18">Welcome To IA</h1>
                <p class="animation" style="--data:20">Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>

        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="js/js_login.js"></script>

</body>
</html>
