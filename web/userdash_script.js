// Circular Progress Bar
const progress = document.getElementById('dailyProgress');
progress.style.setProperty('--progress', '180deg'); // Example: 50% progress

// Chart.js for Emissions Over Time
const emissionsCtx = document.getElementById('emissionsChart').getContext('2d');
const emissionsChart = new Chart(emissionsCtx, {
    type: 'line',
    data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [{
            label: 'Emissions (kg CO₂)',
            data: [100, 90, 80, 85, 70, 60],
            borderColor: '#4caf50',
            fill: false,
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

// Chart.js for Heatmap
const heatmapCtx = document.getElementById('heatmapChart').getContext('2d');
const heatmapChart = new Chart(heatmapCtx, {
    type: 'bar',
    data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
            label: 'Energy Usage (kWh)',
            data: [10, 12, 8, 15, 9, 11, 7],
            backgroundColor: '#4caf50',
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});