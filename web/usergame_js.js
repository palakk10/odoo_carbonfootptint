// Join Challenge
function joinChallenge() {
    alert('You joined the challenge: Reduce 10kg CO₂ this month!');
}

// Show Badge Info
function showBadgeInfo(badgeName) {
    alert(`Earn the ${badgeName} badge by completing specific challenges!`);
}

// Redeem Reward
function redeemReward(reward) {
    alert(`You redeemed ${reward}!`);
}

// Show Achievement Popup
function showAchievementPopup(badgeName) {
    const popup = document.getElementById('achievementPopup');
    popup.querySelector('.badge-name').textContent = badgeName;
    popup.style.display = 'block';
}

// Close Achievement Popup
function closeAchievementPopup() {
    document.getElementById('achievementPopup').style.display = 'none';
}

// Compare with Friends
function compareWithFriends() {
    alert('Compare your progress with friends!');
}

// Simulate Achievement Unlock
setTimeout(() => showAchievementPopup('Carbon Saver'), 2000);