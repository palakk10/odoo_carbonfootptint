<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carbon Footprint Profile</title>
    <style>
        :root {
            --primary-color: #4CAF50;
            --secondary-color: #2E7D32;
            --accent-color: #81C784;
            --background-color: #F1F8E9;
            --text-color: #333;
            --error-color: #F44336;
            --section-bg: #f9f9f9;
            --border-color: #e0e0e0;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--background-color);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .container {
            width: 100%;
            max-width: 800px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 0.8s forwards;
            margin: 30px 0;
        }
        
        @keyframes fadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            padding: 30px;
            color: white;
            text-align: center;
        }
        
        .header h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
        }
        
        .header p {
            margin: 10px 0 0;
            opacity: 0.8;
        }
        
        .form-container {
            padding: 30px;
        }
        
        .form-section {
            margin-bottom: 40px;
            padding: 25px;
            background-color: var(--section-bg);
            border-radius: 8px;
            border-left: 4px solid var(--primary-color);
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .form-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        
        .form-section h2 {
            margin-top: 0;
            color: var(--secondary-color);
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            border-color: var(--primary-color);
            outline: none;
        }
        
        .radio-group {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        
        .radio-option {
            flex: 1;
            min-width: 120px;
            background: #f5f5f5;
            border: 2px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .radio-option:hover {
            border-color: var(--accent-color);
        }
        
        .radio-option.selected {
            border-color: var(--primary-color);
            background: rgba(76, 175, 80, 0.1);
        }
        
        .radio-option input {
            display: none;
        }
        
        .option-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 8px;
        }
        
        .option-icon {
            font-size: 24px;
        }
        
        .checkbox-group {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        
        .form-check {
            min-width: 160px;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        
        .form-check-input {
            margin-right: 8px;
            width: 18px;
            height: 18px;
        }
        
        .form-actions {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }
        
        .btn {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .btn-submit {
            background: var(--primary-color);
            color: white;
            min-width: 200px;
        }
        
        .btn-submit:hover {
            background: var(--secondary-color);
        }
        
        .error {
            color: var(--error-color);
            font-size: 14px;
            margin-top: 5px;
            display: none;
        }
        
        .has-error .form-control {
            border-color: var(--error-color);
        }
        
        .has-error .error {
            display: block;
        }
        
        .success-message {
            display: none;
            text-align: center;
            padding: 30px;
        }
        
        .success-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: var(--primary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 40px;
        }
        
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-30px);
            }
            60% {
                transform: translateY(-15px);
            }
        }
        
        .animate-bounce {
            animation: bounce 1s;
        }
        
        .slider-container {
            width: 100%;
            margin-top: 10px;
        }
        
        .slider {
            width: 100%;
            -webkit-appearance: none;
            height: 10px;
            border-radius: 5px;
            background: #ddd;
            outline: none;
        }
        
        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--primary-color);
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .slider::-moz-range-thumb {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--primary-color);
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .slider::-webkit-slider-thumb:hover {
            transform: scale(1.2);
        }
        
        .slider-value {
            text-align: center;
            margin-top: 10px;
            font-weight: 500;
        }
        
        .section-icon {
            display: inline-block;
            margin-right: 10px;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Carbon Footprint Profile</h1>
            <p>Help us understand your environmental impact</p>
        </div>
        
        <div class="form-container">
            <form id="carbon-profile-form" method="post" action="user_dash.jsp">
                <input type="hidden" id="uid" name="uid" value="1"> <!-- This would be populated dynamically -->
                
                <!-- Vehicle Information Section -->
                <div class="form-section">
                    <h2>Vehicle Information</h2>
                    
                    <div class="form-group">
                        <label for="vehicleType">Type of Vehicle</label>
                        <select class="form-control" id="vehicleType" name="vehicleType" required>
                            <option value="">Select your vehicle</option>
                            <option value="car">Car</option>
                            <option value="motorcycle">Motorcycle</option>
                            <option value="suv">SUV</option>
                            <option value="bike">Bicycle</option>
                            <option value="none">No Vehicle</option>
                        </select>
                        <div class="error">Please select your vehicle type</div>
                    </div>
                    
                    <div class="form-group">
                        <label for="mileage">Efficiency of your vehicle (Mileage in km/l)</label>
                        <input type="number" class="form-control" id="mileage" name="averageMileage" min="1" max="100" step="0.1" placeholder="Enter mileage" required>
                        <div class="error">Please enter a valid mileage</div>
                    </div>
                    
                    <div class="form-group">
                        <label>Fuel Type</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="fuelType" value="petrol" required>
                                <div class="option-content">
                                    <div class="option-icon">P</div>
                                    <div>Petrol</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="fuelType" value="diesel">
                                <div class="option-content">
                                    <div class="option-icon">D</div>
                                    <div>Diesel</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="fuelType" value="electric">
                                <div class="option-content">
                                    <div class="option-icon">E</div>
                                    <div>Electric</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="fuelType" value="hybrid">
                                <div class="option-content">
                                    <div class="option-icon">H</div>
                                    <div>Hybrid</div>
                                </div>
                            </label>
                        </div>
                        <div class="error">Please select your fuel type</div>
                    </div>
                </div>
                
                <!-- Diet & Lifestyle Section -->
                <div class="form-section">
                    <h2>Diet & Lifestyle</h2>
                    
                    <div class="form-group">
                        <label>Diet Preferences</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="dietType" value="vegan" required>
                                <div class="option-content">
                                    <div class="option-icon">V</div>
                                    <div>Vegan</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="dietType" value="vegetarian">
                                <div class="option-content">
                                    <div class="option-icon">VG</div>
                                    <div>Vegetarian</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="dietType" value="mixed">
                                <div class="option-content">
                                    <div class="option-icon">M</div>
                                    <div>Mixed</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="dietType" value="non-vegetarian">
                                <div class="option-content">
                                    <div class="option-icon">NV</div>
                                    <div>Non-vegetarian</div>
                                </div>
                            </label>
                        </div>
                        <div class="error">Please select your diet preference</div>
                    </div>
                    
                    <div class="form-group">
                        <label for="householdMembers">Number of people in your household</label>
                        <input type="number" class="form-control" id="householdMembers" name="householdMembers" min="1" max="20" placeholder="Enter number of people" required>
                        <div class="error">Please enter the number of people</div>
                    </div>
                    
                    <div class="form-group">
                        <label for="householdType">Type of housing</label>
                        <select class="form-control" id="householdType" name="householdType" required>
                            <option value="">Select housing type</option>
                            <option value="apartment">Apartment</option>
                            <option value="house">House</option>
                            <option value="townhouse">Townhouse</option>
                            <option value="mobile">Mobile Home</option>
                        </select>
                        <div class="error">Please select your housing type</div>
                    </div>
                </div>
                
                <!-- Waste Management Section -->
                <div class="form-section">
                    <h2>Waste Management</h2>
                    
                    <div class="form-group">
                        <label>How often do you dispose waste?</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="wasteFrequency" value="daily" required>
                                <div class="option-content">
                                    <div class="option-icon">D</div>
                                    <div>Daily</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="wasteFrequency" value="twice_weekly">
                                <div class="option-content">
                                    <div class="option-icon">TW</div>
                                    <div>Twice Weekly</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="wasteFrequency" value="weekly">
                                <div class="option-content">
                                    <div class="option-icon">W</div>
                                    <div>Weekly</div>
                                </div>
                            </label>
                        </div>
                        <div class="error">Please select your waste disposal frequency</div>
                    </div>
                    
                    <div class="form-group">
                        <label>Do you use plastic bags for waste disposal?</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="usePlasticBags" value="yes" required>
                                <div class="option-content">
                                    <div class="option-icon">Y</div>
                                    <div>Yes</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="usePlasticBags" value="no">
                                <div class="option-content">
                                    <div class="option-icon">N</div>
                                    <div>No</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="usePlasticBags" value="sometimes">
                                <div class="option-content">
                                    <div class="option-icon">S</div>
                                    <div>Sometimes</div>
                                </div>
                            </label>
                        </div>
                        <div class="error">Please select if you use plastic bags</div>
                    </div>
                    
                    <div class="form-group">
                        <label>Estimated waste generated per week (kg)</label>
                        <div class="slider-container">
                            <input type="range" min="1" max="50" value="10" class="slider" id="wasteSlider" name="wasteGenerated">
                            <div class="slider-value" id="wasteValue">10 kg</div>
                        </div>
                    </div>
                </div>
                
                <!-- Energy Usage Section -->
                <div class="form-section">
                    <h2>Energy Usage</h2>
                    
                    <div class="form-group">
                        <label>Type of electricity used at household</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="houseEnergySource" value="grid" required>
                                <div class="option-content">
                                    <div class="option-icon">G</div>
                                    <div>Grid Electricity</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="houseEnergySource" value="solar">
                                <div class="option-content">
                                    <div class="option-icon">S</div>
                                    <div>Solar Power</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="houseEnergySource" value="wind">
                                <div class="option-content">
                                    <div class="option-icon">W</div>
                                    <div>Wind Power</div>
                                </div>
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="houseEnergySource" value="mixed">
                                <div class="option-content">
                                    <div class="option-icon">M</div>
                                    <div>Mixed Sources</div>
                                </div>
                            </label>
                        </div>
                        <div class="error">Please select your energy source</div>
                    </div>
                    
                    <div class="form-group">
                        <label>Appliances owned (select multiple)</label>
                        <div class="checkbox-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="refrigerator" id="appRefrigerator">
                                <label class="form-check-label" for="appRefrigerator">Refrigerator</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="air_conditioner" id="appAirConditioner">
                                <label class="form-check-label" for="appAirConditioner">Air Conditioner</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="washing_machine" id="appWashingMachine">
                                <label class="form-check-label" for="appWashingMachine">Washing Machine</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="dishwasher" id="appDishwasher">
                                <label class="form-check-label" for="appDishwasher">Dishwasher</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="television" id="appTelevision">
                                <label class="form-check-label" for="appTelevision">Television</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="appliances" value="computer" id="appComputer">
                                <label class="form-check-label" for="appComputer">Computer</label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label>Estimated water usage per day (liters)</label>
                        <div class="slider-container">
                            <input type="range" min="50" max="500" value="150" class="slider" id="waterSlider" name="waterUsage">
                            <div class="slider-value" id="waterValue">150 liters</div>
                        </div>
                    </div>
                </div>
                
                <div class="form-actions">
                    <a href="user_dash.jsp"> <button type="submit" class="btn btn-submit">Submit Profile</button></a>
                </div>
            </form>
            
            <div class="success-message">
                <div class="success-icon animate-bounce">?</div>
                <h2>Profile Saved Successfully!</h2>
                <p>Thank you for submitting your carbon footprint profile. We'll analyze your data and provide personalized recommendations.</p>
                <button class="btn btn-submit" onclick="window.location.href='user_dash.jsp'">Go to Dashboard</button>
            </div>
        </div>
    </div>
    
    <script>
        document.addEventListener('DOMContentLoaded', function() {
    // Get form elements
    const form = document.getElementById('carbon-profile-form');
    const radioOptions = document.querySelectorAll('.radio-option');
    const wasteSlider = document.getElementById('wasteSlider');
    const wasteValue = document.getElementById('wasteValue');
    const waterSlider = document.getElementById('waterSlider');
    const waterValue = document.getElementById('waterValue');
    
    // Initialize sliders
    wasteSlider.addEventListener('input', function() {
        wasteValue.textContent = this.value + ' kg';
    });
    
    waterSlider.addEventListener('input', function() {
        waterValue.textContent = this.value + ' liters';
    });
    
    // Direct event handling for all radio options
    radioOptions.forEach(option => {
        option.addEventListener('click', function() {
            // Get the radio input inside this option
            const radioInput = this.querySelector('input[type="radio"]');
            if (!radioInput) return;
            
            const groupName = radioInput.getAttribute('name');
            
            // Mark this option as checked
            radioInput.checked = true;
            
            // Find all options in the same group
            const sameGroupOptions = document.querySelectorAll(`.radio-option input[name="${groupName}"]`);
            
            // Update visual selection for all options in this group
            sameGroupOptions.forEach(input => {
                input.parentElement.classList.remove('selected');
            });
            this.classList.add('selected');
            
            // Clear error message for this group
            const formGroup = this.closest('.form-group');
            if (formGroup) {
                formGroup.classList.remove('has-error');
                const errorDiv = formGroup.querySelector('.error');
                if (errorDiv) {
                    errorDiv.style.display = 'none';
                }
            }
        });
    });
    
    // Pre-select any radio buttons that might be default-checked in HTML
    document.querySelectorAll('input[type="radio"]:checked').forEach(radio => {
        const option = radio.closest('.radio-option');
        if (option) {
            option.classList.add('selected');
        }
    });
    
    // Form section animation on scroll
    const sections = document.querySelectorAll('.form-section');
    
    function checkSections() {
        const triggerBottom = window.innerHeight / 5 * 4;
        
        sections.forEach(section => {
            const sectionTop = section.getBoundingClientRect().top;
            
            if (sectionTop < triggerBottom) {
                section.style.opacity = '1';
                section.style.transform = 'translateY(0)';
            }
        });
    }
    
    // Initial setup for sections
    sections.forEach(section => {
        section.style.opacity = '0';
        section.style.transform = 'translateY(20px)';
        section.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });
    
    // Check sections on load and scroll
    window.addEventListener('scroll', checkSections);
    checkSections();
    
    // Improved form validation function
    function validateForm() {
        let isValid = true;
        
        // Handle radio button validation manually for all groups
        const radioGroups = {};
        
        // Collect all radio groups
        document.querySelectorAll('input[type="radio"][required]').forEach(radio => {
            const name = radio.getAttribute('name');
            if (!radioGroups[name]) {
                radioGroups[name] = true;
            }
        });
        
        // Check each radio group
        for (const groupName in radioGroups) {
            const isChecked = document.querySelector(`input[name="${groupName}"]:checked`);
            const firstRadio = document.querySelector(`input[name="${groupName}"]`);
            const formGroup = firstRadio ? firstRadio.closest('.form-group') : null;
            
            if (!isChecked && formGroup) {
                formGroup.classList.add('has-error');
                const errorDiv = formGroup.querySelector('.error');
                if (errorDiv) {
                    errorDiv.style.display = 'block';
                }
                isValid = false;
            }
        }
        
        // Handle other required fields
        document.querySelectorAll('input[required]:not([type="radio"]), select[required]').forEach(field => {
            const formGroup = field.closest('.form-group');
            
            if (!field.value.trim() && formGroup) {
                formGroup.classList.add('has-error');
                const errorDiv = formGroup.querySelector('.error');
                if (errorDiv) {
                    errorDiv.style.display = 'block';
                }
                isValid = false;
            }
        });
        
        if (!isValid) {
            // Find the first error field and scroll to it
            const firstError = document.querySelector('.has-error');
            if (firstError) {
                firstError.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        }
        
        return isValid;
    }
    
    // Handle form submission
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        if (validateForm()) {
            // Collect form data
            const formData = new FormData(form);
            
            // Convert to JSON
            const jsonData = {};
            for (const [key, value] of formData.entries()) {
                if (key === 'appliances') {
                    if (!jsonData[key]) {
                        jsonData[key] = [];
                    }
                    jsonData[key].push(value);
                } else {
                    jsonData[key] = value;
                }
            }
            
            // AJAX submission
            fetch('user_dash.jsp', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(jsonData)
            })
            .then(response => {
                if (response.ok) {
                    // Hide form
                    form.style.display = 'none';
                    
                    // Show success message
                    document.querySelector('.success-message').style.display = 'block';
                } else {
                    throw new Error('Form submission failed');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred while submitting the form. Please try again.');
            });
        }
    });
});
    </script>
</body>
</html>




<