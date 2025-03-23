<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - EcoPulse</title>
    <link rel="stylesheet" href="sign_style.css">
</head>
<body>
    <div class="signup-container">
        <!-- EcoPulse Logo & Tagline -->
        <div class="logo">
            <img src="logo.png" alt="EcoPulse Logo">
            <h1>Track Your Carbon. Earn Rewards. 🌱</h1>
        </div>

        <!-- Signup Form -->
        <form id="signupForm" action="signupProcess.jsp" method="POST">
            <!-- User Type Dropdown -->
            <div class="form-group">
                <label for="userType">User Type</label>
                <select id="userType" name="userType" required>
                    <option value="individual">👤 Individual User</option>
                    <option value="organization">🌍 Organization</option>
                </select>
            </div>

            <!-- Full Name -->
            <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Location (Country and City) -->
            <div class="form-group">
                <label for="country">Country</label>
                <select id="country" name="country" required>
                    <option value="">Select Country</option>
                    <option value="USA">United States</option>
                    <option value="India">India</option>
                    <option value="Germany">Germany</option>
                    <option value="Canada">Canada</option>
                    <!-- Add more countries as needed -->
                </select>
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>

            <!-- Confirm Password -->
            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>

            <!-- OAuth Signup Options -->
            <div class="oauth-options">
                <p>Or sign up with:</p>
                <button type="button" class="oauth-button" onclick="signupWithGoogle()">
                    <img src="google-icon.png" alt="Google Icon"> Signup with Google
                </button>
            </div>

            <!-- Signup Button -->
            <button type="submit" class="signup-button">Create My Account 🚀</button>
        </form>

        <!-- Already have an account? -->
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login Here</a></p>
        </div>

    </div>

    <script src="sign_script.js"></script>
</body>
</html>