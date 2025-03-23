// OAuth Signup with Google
function signupWithGoogle() {
    alert('Redirecting to Google OAuth...');
    // Add OAuth logic here
}

// Progress Bar Animation
document.addEventListener('DOMContentLoaded', () => {
    const steps = document.querySelectorAll('.progress-step');
    steps[0].classList.add('active');
    setTimeout(() => steps[1].classList.add('active'), 500);
    setTimeout(() => steps[2].classList.add('active'), 1000);
});