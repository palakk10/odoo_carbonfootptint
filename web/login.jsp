<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - EcoPulse</title>
    <link rel="stylesheet" href="login_style.css">
</head>
<body>
    <!-- Light/Dark Mode Toggle -->
    <div class="mode-toggle">
        <input type="checkbox" id="modeToggle">
        <label for="modeToggle" class="toggle-label"></label>
    </div>

    <!-- Login Card -->
    <div class="login-card">
        <!-- EcoPulse Logo -->
        <div class="logo">
            <img src="logo.png" alt="EcoPulse Logo">
            <h1>Welcome Back!</h1>
        </div>

        <!-- Login Form -->
        <form id="loginForm" action="loginProcess.jsp" method="POST">
            <!-- Email Input -->
            <div class="form-group">
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>

            <!-- Password Input -->
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Password" required>
                <span class="toggle-password" onclick="togglePasswordVisibility()">️</span>
            </div>

            <!-- Forgot Password Link -->
            <div class="forgot-password">
                <a href="forgotPassword.jsp">Forgot Password?</a>
            </div>

            <!-- Log In Button -->
            <button type="submit" class="login-button">Log In</button>
            <a href="user_dash.jsp">UserDash
            </a>
            <a href="org_dash.jsp">OrgDash
            </a>
        </form>

        <!-- Sign Up Option -->
        <div class="signup-option">
            <p>New user? <a href="signup.jsp">Sign Up</a></p>
        </div>
    </div>

    <!-- Background Animation -->
    <div class="background-animation">
        <div class="leaf"></div>
        <div class="leaf"></div>
        <div class="leaf"></div>
    </div>

    <script src="login_script.js"></script>
</body>
</html>