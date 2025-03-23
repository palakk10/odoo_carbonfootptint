// Open Add Device Modal
function openAddDeviceModal() {
    document.getElementById('addDeviceModal').style.display = 'flex';
}

// Close Add Device Modal
function closeAddDeviceModal() {
    document.getElementById('addDeviceModal').style.display = 'none';
}

// Set Device Alert
function setDeviceAlert(deviceName) {
    alert(`Alert set for ${deviceName}`);
}

// Add Device Form Submission
document.getElementById('addDeviceForm').addEventListener('submit', function (e) {
    e.preventDefault();
    const deviceName = document.getElementById('deviceName').value;
    const deviceBrand = document.getElementById('deviceBrand').value;
    const deviceType = document.getElementById('deviceType').value;
    alert(`Added ${deviceName} (${deviceBrand}, ${deviceType})`);
    closeAddDeviceModal();
});