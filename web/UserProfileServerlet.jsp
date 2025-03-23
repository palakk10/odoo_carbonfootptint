/* Folder Structure for Apache NetBeans:
- WebPages/
  - index.jsp (Main Dashboard)
  - vehicle.jsp
  - diet.jsp
  - waste.jsp
  - plastic.jsp
  - electricity.jsp
  - shopping.jsp
  - water.jsp
  - animations.css
  - script.js
  - WEB-INF/web.xml
- Source Packages/
  - UserProfileServlet.jsp
- database/
  - user_profile.sql
*/

<!-- UserProfileServlet.jsp (Handles form submissions) -->
<%@ page import="java.sql.*" %>
<%
    String status = "error";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carbon_tracker", "root", "password");
        String query = "INSERT INTO user_profile (uid, vehicle_type, fuel_type, average_mileage, diet_type, household_type, household_members, house_energy_source, appliances_owned, shopping_preferences, water_usage, waste_generated) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        
        ps.setInt(1, Integer.parseInt(request.getParameter("uid")));
        ps.setString(2, request.getParameter("vehicle_type"));
        ps.setString(3, request.getParameter("fuel_type"));
        ps.setFloat(4, Float.parseFloat(request.getParameter("average_mileage")));
        ps.setString(5, request.getParameter("diet_type"));
        ps.setString(6, request.getParameter("household_type"));
        ps.setInt(7, Integer.parseInt(request.getParameter("household_members")));
        ps.setString(8, request.getParameter("house_energy_source"));
        ps.setString(9, request.getParameter("appliances_owned"));
        ps.setString(10, request.getParameter("shopping_preferences"));
        ps.setFloat(11, Float.parseFloat(request.getParameter("water_usage")));
        ps.setFloat(12, Float.parseFloat(request.getParameter("waste_generated")));
        
        ps.executeUpdate();
        con.close();
        status = "success";
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("index.jsp?status=" + status);
%>
