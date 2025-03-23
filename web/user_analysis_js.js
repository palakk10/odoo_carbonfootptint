// Chart.js for Emissions Over Time
const emissionsCtx = document.getElementById('emissionsChart').getContext('2d');
const emissionsChart = new Chart(emissionsCtx, {
    type: 'line',
    data: {
        labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
        datasets: [{
            label: 'CO₂ Emissions (kg)',
            data: [30, 25, 20, 25],
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

// Chart.js for Energy Usage Distribution
const energyPieCtx = document.getElementById('energyPieChart').getContext('2d');
const energyPieChart = new Chart(energyPieCtx, {
    type: 'pie',
    data: {
        labels: ['Electricity', 'Transportation', 'Appliances'],
        datasets: [{
            data: [50, 30, 20],
            backgroundColor: ['#4caf50', '#ff9800', '#f44336'],
        }]
    },
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

// Toggle Chart View
function toggleChart(view) {
    const buttons = document.querySelectorAll('.toggle-button');
    buttons.forEach(button => button.classList.remove('active'));
    document.querySelector(`.toggle-button[onclick="toggleChart('${view}')"]`).classList.add('active');

    // Update chart data based on view (weekly/monthly)
    if (view === 'weekly') {
        emissionsChart.data.labels = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
        emissionsChart.data.datasets[0].data = [30, 25, 20, 25];
    } else {
        emissionsChart.data.labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
        emissionsChart.data.datasets[0].data = [100, 90, 80, 85, 70, 60];
    }
    emissionsChart.update();
}

// Download Report
function downloadReport(format) {
    alert(`Downloading report in ${format.toUpperCase()} format...`);
}

// Set Reduction Goal
function setReductionGoal() {
    const goal = prompt('Enter your CO₂ reduction goal for next month (in kg):');
    if (goal) {
        alert(`Goal set: Reduce ${goal} kg CO₂ next month!`);
    }
}