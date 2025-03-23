<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecopulse", "root", "password");
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            session.setAttribute("userEmail", email);
            response.sendRedirect("dashboard.jsp");
        } else {
            out.println("Invalid email or password!");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>