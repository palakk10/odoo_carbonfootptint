<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organization dashboard</title>
    <link rel="stylesheet" href="org_dash_css.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="emissions-container">
        <!-- Header -->
        <div class="header">
            <h1>Dashboard</h1>
        </div>

        <!-- Real-Time Carbon Tracking -->
        <div class="real-time-tracking">
            <h2>Real-Time Carbon Tracking</h2>
            <div class="stats">
                <div class="stat-card">
                    <h3>Today</h3>
                    <p><span id="todayEmissions">250</span> kg CO₂</p>
                </div>
                <div class="stat-card">
                    <h3>This Week</h3>
                    <p><span id="weekEmissions">1750</span> kg CO₂</p>
                </div>
                <div class="stat-card">
                    <h3>This Month</h3>
                    <p><span id="monthEmissions">7000</span> kg CO₂</p>
                </div>
            </div>

            <!-- Emissions Heatmap -->
            <div class="heatmap-card">
                <h3>Emissions Heatmap</h3>
                <canvas id="heatmapChart"></canvas>
            </div>

            <!-- Department-wise CO₂ Contribution -->
            <div class="department-contribution">
                <h3>Department-wise CO₂ Contribution</h3>
                <canvas id="departmentPieChart"></canvas>
            </div>
        </div>


        <!-- Sustainability Scorecard -->
        <div class="sustainability-scorecard">
            <h2>Sustainability Scorecard</h2>
            <div class="scorecard">
                <div class="rating">
                    <h3>Carbon Efficiency Rating</h3>
                    <p class="score">B+</p>
                </div>
                <div class="suggestions">
                    <h3>Suggested Actions</h3>
                    <ul>
                        <li>Switch to renewable energy sources.</li>
                        <li>Optimize HVAC systems for energy efficiency.</li>
                        <li>Encourage remote work to reduce fleet emissions.</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="quick-actions">
            <h2>Quick Actions</h2>
            <div class="action-buttons">
                <a href="org_dept_report.jsp"><button class="action-button" onclick="generateReport()">Generate Report</button></a>
                <button class="action-button" onclick="setReductionGoal()">Set Reduction Goal</button>
                <button class="action-button" onclick="joinBusinessChallenge()">Join a Business Challenge</button>
            </div>
        </div>
    </div>

    <script src="org_dash_js.js"></script>
</body>
</html>