CREATE DATABASE IF NOT EXISTS health_tracker;
USE health_tracker;

CREATE TABLE user (
  user_id INT PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth DATE,
  gender VARCHAR(10),
  height_cm INT,
  weight_kg INT,
  email VARCHAR(100)
);

CREATE TABLE daily_metric (
  metric_id INT PRIMARY KEY,
  user_id INT,
  date DATE,
  steps INT,
  avg_heart_rate FLOAT,
  sleep_hours FLOAT,
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE mood_log (
  mood_id INT PRIMARY KEY,
  user_id INT,
  date DATE,
  time TIME,
  mood_score INT,
  note TEXT,
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE nutrition_log (
  nutrition_id INT PRIMARY KEY,
  user_id INT,
  date DATE,
  meal_type VARCHAR(50),
  food_item VARCHAR(100),
  calories INT,
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE activity_log (
  activity_id INT PRIMARY KEY,
  user_id INT,
  date DATE,
  activity_type VARCHAR(100),
  duration_min FLOAT,
  calories_burned FLOAT,
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE health_assessment (
  assessment_id INT PRIMARY KEY,
  user_id INT,
  date DATE,
  systolic_bp INT,
  diastolic_bp INT,
  bmi FLOAT,
  flag BOOLEAN,
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);
