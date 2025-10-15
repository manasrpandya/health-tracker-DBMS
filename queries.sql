USE health_tracker;

-- 1. List all users with their basic details
SELECT * FROM user;

-- 2. Find all activity logs for 'Vikram Iyer'
SELECT a.* FROM activity_log a
JOIN user u ON a.user_id = u.user_id
WHERE u.name = 'Vikram Iyer';

-- 3. Average sleep hours per user
SELECT u.name, AVG(d.sleep_hours) AS avg_sleep
FROM user u
JOIN daily_metric d ON u.user_id = d.user_id
GROUP BY u.user_id;

-- 4. Users with mood score <= 2 (low mood)
SELECT u.name, m.mood_score, m.note
FROM user u
JOIN mood_log m ON u.user_id = m.user_id
WHERE m.mood_score <= 2;

-- 5. Count of meals per user on 2025-06-10
SELECT u.name, COUNT(n.nutrition_id) AS meals_logged
FROM user u
JOIN nutrition_log n ON u.user_id = n.user_id
WHERE n.date = '2025-06-10'
GROUP BY u.user_id;

-- 6. Users with over 8000 steps on a day
SELECT u.name, d.steps
FROM user u
JOIN daily_metric d ON u.user_id = d.user_id
WHERE d.steps > 8000;

-- 7. Total calories burned per user
SELECT u.name, SUM(a.calories_burned) AS total_burned
FROM user u
JOIN activity_log a ON u.user_id = a.user_id
GROUP BY u.user_id;

-- 8. Users with flagged health assessments
SELECT u.name, h.systolic_bp, h.diastolic_bp, h.bmi
FROM user u
JOIN health_assessment h ON u.user_id = h.user_id
WHERE h.flag = TRUE;

-- 9. Top 3 users by steps
SELECT u.name, d.steps
FROM user u
JOIN daily_metric d ON u.user_id = d.user_id
ORDER BY d.steps DESC
LIMIT 3;

-- 10. Meals with over 600 calories
SELECT u.name, n.food_item, n.calories
FROM user u
JOIN nutrition_log n ON u.user_id = n.user_id
WHERE n.calories > 600;

-- 11. Users who walked less than 4000 steps and slept < 6 hours
SELECT u.name, d.steps, d.sleep_hours
FROM user u
JOIN daily_metric d ON u.user_id = d.user_id
WHERE d.steps < 4000 AND d.sleep_hours < 6.0;

-- 12. Subquery: Users with below average BMI
SELECT name, bmi
FROM (
  SELECT u.name, h.bmi
  FROM user u
  JOIN health_assessment h ON u.user_id = h.user_id
) AS sub
WHERE bmi < (SELECT AVG(bmi) FROM health_assessment);
