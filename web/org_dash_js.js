// Chart.js for Emissions Heatmap
const heatmapCtx = document.getElementById('heatmapChart').getContext('2d');
const heatmapChart = new Chart(heatmapCtx, {
    type: 'bar',
    data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
            label: 'Emissions (kg CO₂)',
            data: [300, 400, 350, 500, 450, 400, 350],
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

// Chart.js for Department-wise CO₂ Contribution
const departmentPieCtx = document.getElementById('departmentPieChart').getContext('2d');
const departmentPieChart = new Chart(departmentPieCtx, {
    type: 'pie',
    data: {
        labels: ['Sales', 'Engineering', 'HR', 'Operations'],
        datasets: [{
            data: [30, 40, 10, 20],
            backgroundColor: ['#4caf50', '#ff9800', '#f44336', '#2196f3'],
        }]
    },
});

// Chart.js for Energy Source Breakdown
const energyBarCtx = document.getElementById('energyBarChart').getContext('2d');
const energyBarChart = new Chart(energyBarCtx, {
    type: 'bar',
    data: {
        labels: ['Electricity', 'Fuel', 'HVAC', 'Appliances', 'Fleet'],
        datasets: [{
            label: 'Energy Usage (kWh)',
            data: [500, 300, 200, 150, 100],
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

// Quick Actions


function setReductionGoal() {
    const goal = prompt('Enter your CO₂ reduction target (in kg):');
    if (goal) {
        alert(`Reduction goal set: ${goal} kg CO₂`);
    }
}

function joinBusinessChallenge() {
    alert('Joining a business challenge...');
}