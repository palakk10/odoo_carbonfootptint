<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carbon Footprint Analytics - EcoPulse</title>
    <link rel="stylesheet" href="user_analysis_css.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="analytics-container">
        <!-- Overview Section -->
        <div class="overview">
            <div class="stat-card">
                <h2>Total Carbon Footprint This Month</h2>
                <p class="stat-value">25 kg CO₂</p>
                <p class="stat-comparison">↑ 5% from last month</p>
                <p class="ai-insight">You reduced emissions by 15% last week! Keep it up! 🎉</p>
            </div>
        </div>

        <!-- Data Visualization -->
        <div class="data-visualization">
            <!-- Line Chart -->
            <div class="chart-card">
                <h3>CO₂ Emissions Over Time</h3>
                <canvas id="emissionsChart"></canvas>
                <div class="chart-toggle">
                    <button class="toggle-button active" onclick="toggleChart('weekly')">Weekly</button>
                    <button class="toggle-button" onclick="toggleChart('monthly')">Monthly</button>
                </div>
            </div>

            <!-- Pie Chart -->
            <div class="chart-card">
                <h3>Energy Usage Distribution</h3>
                <canvas id="energyPieChart"></canvas>
            </div>

            <!-- Heatmap -->
            <div class="chart-card">
                <h3>High-Usage Days</h3>
                <canvas id="heatmapChart"></canvas>
            </div>
        </div>

        <!-- User Actions -->
        <div class="user-actions">
            <button class="action-button" onclick="downloadReport('pdf')">Download Report (PDF)</button>
            <button class="action-button" onclick="downloadReport('csv')">Download Report (CSV)</button>
            <button class="action-button" onclick="setReductionGoal()">Set Reduction Goal</button>
        </div>

        <!-- Gamified Elements -->
        <div class="gamification">
            <div class="ecopoints-summary">
                <h3>EcoPoints Reward Summary</h3>
                <p>You've earned <span class="ecopoints">1250</span> points this month!</p>
            </div>
            <div class="badge-indicator">
                <h3>Next Badge Unlock</h3>
                <p>Reduce <span class="remaining-co2">5 kg</span> more CO₂ to earn the <span class="badge-name">Eco Hero</span> badge!</p>
            </div>
        </div>
    </div>

    <script src="user_analysis_js.js"></script>
</body>
</html>