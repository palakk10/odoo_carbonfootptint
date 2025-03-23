<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoT Device Management - EcoPulse</title>
    <link rel="stylesheet" href="user_iot_style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="iot-container">
        <!-- Header -->
        <div class="header">
            <h1>IoT Device Management</h1>
            <button class="add-device-button" onclick="openAddDeviceModal()">
                <span>+</span> Add New Device
            </button>
        </div>

        <!-- Connected Devices List -->
        <div class="device-list">
            <!-- Device Card 1 -->
            <div class="device-card">
                <div class="device-icon">❄️</div>
                <div class="device-info">
                    <h3>Smart AC</h3>
                    <p>Brand: EcoCool</p>
                    <p>Status: <span class="status online">Online</span></p>
                </div>
                <div class="device-stats">
                    <p>Energy: <span class="energy">3.2 kWh</span></p>
                    <p>CO₂: <span class="co2">15%</span></p>
                </div>
                <div class="device-controls">
                    <label class="toggle-switch">
                        <input type="checkbox" checked>
                        <span class="slider"></span>
                    </label>
                    <button class="alert-button" onclick="setDeviceAlert('Smart AC')">Set Alert</button>
                </div>
                <div class="energy-bar">
                    <div class="bar" style="width: 60%;"></div>
                </div>
            </div>

            <!-- Device Card 2 -->
            <div class="device-card">
                <div class="device-icon">🚗</div>
                <div class="device-info">
                    <h3>Electric Vehicle</h3>
                    <p>Brand: Tesla</p>
                    <p>Status: <span class="status offline">Offline</span></p>
                </div>
                <div class="device-stats">
                    <p>Energy: <span class="energy">0 kWh</span></p>
                    <p>CO₂: <span class="co2">0%</span></p>
                </div>
                <div class="device-controls">
                    <label class="toggle-switch">
                        <input type="checkbox">
                        <span class="slider"></span>
                    </label>
                    <button class="alert-button" onclick="setDeviceAlert('Electric Vehicle')">Set Alert</button>
                </div>
                <div class="energy-bar">
                    <div class="bar" style="width: 0%;"></div>
                </div>
            </div>
        </div>

        <!-- Real-Time Activity Feed -->
        <div class="activity-feed">
            <h2>Real-Time Activity</h2>
            <ul id="activityList">
                <li>Smart AC just turned ON and is consuming 3.2 kWh.</li>
            </ul>
        </div>

        <!-- Add Device Modal -->
        <div id="addDeviceModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeAddDeviceModal()">&times;</span>
                <h2>Add New Device</h2>
                <form id="addDeviceForm">
                    <div class="form-group">
                        <label for="deviceName">Device Name</label>
                        <input type="text" id="deviceName" name="deviceName" required>
                    </div>
                    <div class="form-group">
                        <label for="deviceBrand">Brand</label>
                        <input type="text" id="deviceBrand" name="deviceBrand" required>
                    </div>
                    <div class="form-group">
                        <label for="deviceType">Device Type</label>
                        <select id="deviceType" name="deviceType" required>
                            <option value="AC">Air Conditioner</option>
                            <option value="EV">Electric Vehicle</option>
                            <option value="Light">Smart Light</option>
                            <option value="Plug">Smart Plug</option>
                        </select>
                    </div>
                    <button type="submit" class="submit-button">Add Device</button>
                </form>
            </div>
        </div>
    </div>

    <script src="user_iot_script.js"></script>
</body>
</html>