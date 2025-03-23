<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gamification & Rewards - EcoPulse</title>
    <link rel="stylesheet" href="usergame_css.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="gamification-container">
        <!-- Gamification Dashboard -->
        <div class="dashboard">
            <h1>Gamification & Rewards</h1>

            <!-- Progress Bar -->
            <div class="progress-bar">
                <div class="progress" style="width: 60%;"></div>
                <span class="progress-text">EcoPoints: 1250/2000</span>
            </div>

            <!-- Rank & Leaderboard -->
            <div class="rank-section">
                <div class="rank">
                    <h2>Your Rank: 🌟 Eco-Warrior Level 3</h2>
                    <p>Next level: Save 5kg CO₂</p>
                </div>
                <div class="leaderboard">
                    <h3>Live Leaderboard</h3>
                    <ol>
                        <li>User1 - 5000 EcoPoints</li>
                        <li>User2 - 4500 EcoPoints</li>
                        <li>User3 - 4000 EcoPoints</li>
                    </ol>
                </div>
            </div>

            <!-- Upcoming Challenges -->
            <div class="challenges">
                <h3>Upcoming Challenges</h3>
                <div class="challenge-card">
                    <p>Reduce 10kg CO₂ this month</p>
                    <p class="countdown">Starts in: <span id="challengeCountdown">5d 12h 30m</span></p>
                    <button class="join-button" onclick="joinChallenge()">Join Challenge</button>
                </div>
            </div>
        </div>

        <!-- Rewards & Achievements -->
        <div class="rewards">
            <h2>Rewards & Achievements</h2>

            <!-- Badges Grid -->
            <div class="badges-grid">
                <div class="badge unlocked" onclick="showBadgeInfo('Carbon Saver')">
                    🌱 Carbon Saver
                </div>
                <div class="badge locked" onclick="showBadgeInfo('Eco Hero')">
                    🏆 Eco Hero
                </div>
                <div class="badge locked" onclick="showBadgeInfo('Green Champion')">
                    🌍 Green Champion
                </div>
            </div>

            <!-- EcoPoints Store -->
            <div class="ecopoints-store">
                <h3>EcoPoints Store</h3>
                <div class="store-items">
                    <div class="store-item">
                        <p>Discount Coupon</p>
                        <p>500 EcoPoints</p>
                        <button class="redeem-button" onclick="redeemReward('Discount Coupon')">Redeem</button>
                    </div>
                    <div class="store-item">
                        <p>Plant a Tree</p>
                        <p>1000 EcoPoints</p>
                        <button class="redeem-button" onclick="redeemReward('Plant a Tree')">Redeem</button>
                    </div>
                </div>
            </div>

            <!-- Recent Achievements Popup -->
            <div id="achievementPopup" class="achievement-popup">
                <p>🎉 You just unlocked the <span class="badge-name">Carbon Saver</span> badge!</p>
                <button class="close-button" onclick="closeAchievementPopup()">Close</button>
            </div>
        </div>

        <!-- Interactive Features -->
        <div class="interactive-features">
            <button class="compare-button" onclick="compareWithFriends()">Compare with Friends</button>
        </div>
    </div>

    <script src="usergame_js.js"></script>
</body>
</html>