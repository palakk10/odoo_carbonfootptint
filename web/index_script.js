// Scroll Reveal Animations
ScrollReveal().reveal('.hero-content', { delay: 300 });
ScrollReveal().reveal('.feature-cards .card', { interval: 200 });
ScrollReveal().reveal('.steps .step', { interval: 200 });
ScrollReveal().reveal('.leaderboard, .achievements, .ecopoints', { interval: 200 });
ScrollReveal().reveal('.testimonials .testimonial', { interval: 200 });
ScrollReveal().reveal('.plans .plan', { interval: 200 });

// Stat Counter Animation
let co2Saved = 12345;
const co2Element = document.getElementById('co2Saved');
setInterval(() => {
    co2Saved += 10;
    co2Element.textContent = co2Saved;
}, 1000);