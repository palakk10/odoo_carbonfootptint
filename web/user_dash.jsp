<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - EcoPulse</title>
    <link rel="stylesheet" href="userdash_style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="dashboard-container">
        <!-- Header -->
        <div class="header">
            <h1>Welcome, <%= session.getAttribute("userEmail") %>!</h1>
            <div class="quick-actions">
                <a href="user_analysis.jsp"><button class="action-button">View Report</button></a>
                <a href="user_iot.jsp"> <button class="action-button">Connect Device</button> </a>
                <a href="usergame.jsp"><button class="action-button">Join Challenge</button> </a>
            </div>
        </div>

        <!-- Main Stats -->
        <div class="main-stats">
            <div class="stat-card">
                <h3>Today</h3>
                <p><span id="todayEmission">5.2</span> kg CO₂</p>
            </div>
            <div class="stat-card">
                <h3>This Week</h3>
                <p><span id="weekEmission">36.7</span> kg CO₂</p>
            </div>
            <div class="stat-card">
                <h3>This Month</h3>
                <p><span id="monthEmission">150.3</span> kg CO₂</p>
            </div>
        </div>

        <!-- Circular Progress Bar -->
        <div class="progress-card">
            <h3>Daily Carbon Usage</h3>
            <div class="circular-progress">
                <div class="progress" id="dailyProgress"></div>
                <span class="progress-text">50%</span>
            </div>
        </div>

        <!-- AI Suggestions -->
        <div class="suggestions-card">
            <h3>Eco-Friendly Suggestions</h3>
            <ul id="aiSuggestions">
                <li>Switch to LED bulbs to save energy.</li>
                <li>Use public transport for your next trip.</li>
                <li>Unplug devices when not in use.</li>
            </ul>
        </div>

        <!-- Gamification Elements -->
        <div class="gamification">
            <div class="ecopoints">
                <h3>EcoPoints</h3>
                <p><span id="ecopoints">1250</span> points</p>
            </div>
            <div class="leaderboard">
                <h3>Leaderboard</h3>
                <ol>
                    <li>User1 - 5000 EcoPoints</li>
                    <li>User2 - 4500 EcoPoints</li>
                    <li>User3 - 4000 EcoPoints</li>
                </ol>
            </div>
            <div class="achievements">
                <h3>Achievements</h3>
                <div class="badges">
                    <div class="badge unlocked">🌱 Green Beginner</div>
                    <div class="badge locked">🏆 Eco Champion</div>
                </div>
            </div>
        </div>

        <!-- Data Visualization -->
        <div class="data-visualization">
            <div class="chart-card">
                <h3>Emissions Over Time</h3>
                <canvas id="emissionsChart"></canvas>
            </div>
            <div class="heatmap-card">
                <h3>Energy Usage Heatmap</h3>
                <canvas id="heatmapChart"></canvas>
            </div>
        </div>

        <!-- Real-Time Updates -->
        <div class="real-time-updates">
            <h3>Real-Time Updates</h3>
            <ul id="iotUpdates">
                <li>Smart AC just consumed 2.5 kWh.</li>
                <li>EV charging completed.</li>
            </ul>
        </div>
    </div>
            

    <script src="userdash_script.js"></script>
</body>
</html>