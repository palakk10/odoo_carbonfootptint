// saveProfile.jsp - Processes the form submission and saves to database
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.json.*" %>
<%@ page import="java.io.*" %>

<%
try {
    // Read JSON data from request
    StringBuilder sb = new StringBuilder();
    BufferedReader br = request.getReader();
    String line;
    while ((line = br.readLine()) != null) {
        sb.append(line);
    }
    
    // Parse JSON
    JSONObject jsonData = new JSONObject(sb.toString());
    
    // Database connection parameters
    String dbURL = "jdbc:mysql://localhost:3306/carbon_footprint_db";
    String dbUser = "username";
    String dbPassword = "password";
    
    // Get form data
    int uid = jsonData.getInt("uid");
    String vehicleType = jsonData.getString("vehicleType");
    String fuelType = jsonData.getString("fuelType");
    float averageMileage = Float.parseFloat(jsonData.getString("averageMileage"));
    String dietType = jsonData.getString("dietType");
    String householdType = jsonData.getString("householdType");
    int householdMembers = Integer.parseInt(jsonData.getString("householdMembers"));
    String houseEnergySource = jsonData.getString("houseEnergySource");
    
    // Handle appliances (may be multiple)
    JSONArray appliancesArray = jsonData.optJSONArray("appliances");
    String appliances = "";
    if (appliancesArray != null) {
        for (int i = 0; i < appliancesArray.length(); i++) {
            appliances += appliancesArray.getString(i);
            if (i < appliancesArray.length() - 1) {
                appliances += ",";
            }
        }
    }
    
    float waterUsage = Float.parseFloat(jsonData.getString("waterUsage"));
    float wasteGenerated = Float.parseFloat(jsonData.getString("wasteGenerated"));
    
    // Connect to database
    Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
    
    // Check if profile already exists
    PreparedStatement checkStmt = conn.prepareStatement(
        "SELECT profile_id FROM user_profile WHERE uid = ?"
    );
    checkStmt.setInt(1, uid);
    ResultSet rs = checkStmt.executeQuery();
    
    PreparedStatement stmt;
    if (rs.next()) {
        // Update existing profile
        stmt = conn.prepareStatement(
            "UPDATE user_profile SET " +
            "vehicle_type = ?, fuel_type = ?, average_mileage = ?, " +
            "diet_type = ?, household_type = ?, household_members = ?, " +
            "house_energy_source = ?, appliances_owned = ?, " +
            "water_usage = ?, waste_generated = ? " +