// Toggle Password Visibility
function togglePasswordVisibility() {
    const passwordInput = document.getElementById('password');
    const toggleIcon = document.querySelector('.toggle-password');
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        toggleIcon.textContent = '️';
    } else {
        passwordInput.type = 'password';
        toggleIcon.textContent = '️';
    }
}

// Light/Dark Mode Toggle
const modeToggle = document.getElementById('modeToggle');
modeToggle.addEventListener('change', () => {
    document.body.classList.toggle('dark-mode');
});

// Add dark mode styles dynamically
const style = document.createElement('style');
style.textContent = `
    .dark-mode {
        background: #1a1a1a;
        color: #fff;
    }
    .dark-mode .login-card {
        background: rgba(0, 0, 0, 0.8);
        color: #fff;
    }
    .dark-mode .form-group input {
        background: #333;
        border-color: #555;
        color: #fff;
    }
    .dark-mode .login-button {
        background: #45a049;
    }
`;
document.head.appendChild(style);