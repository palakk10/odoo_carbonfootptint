<%@ page import="java.sql.*" %>
<%
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String country = request.getParameter("country");
    String city = request.getParameter("city");
    String userType = request.getParameter("userType");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    if (password.equals(confirmPassword)) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecopulse", "root", "password");
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (fullName, email, country, city, userType, password) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, country);
            ps.setString(4, city);
            ps.setString(5, userType);
            ps.setString(6, password);
            ps.executeUpdate();
            response.sendRedirect("dashboard.jsp");
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    } else {
        out.println("Passwords do not match!");
    }
%>