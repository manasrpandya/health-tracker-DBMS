USE health_tracker;

-- Users
INSERT INTO user VALUES
(1, 'Aisha Juma', '2000-04-15', 'Female', 160, 55, 'aisha.juma@iitmz.ac.in'),
(2, 'Rohan Mehta', '1999-08-22', 'Male', 175, 68, 'rohan.m@gmail.com'),
(3, 'Neema Suleiman', '2001-02-03', 'Female', 165, 60, 'neema.s@iitmz.ac.in'),
(4, 'Arjun Patel', '1998-12-09', 'Male', 180, 75, 'arjun.patel@gmail.com'),
(5, 'Fatma Nuru', '2002-07-27', 'Female', 158, 52, 'fatma.nuru@iitmz.ac.in'),
(6, 'Vikram Iyer', '2000-06-30', 'Male', 170, 70, 'vikram.iyer@gmail.com');

-- Daily Metrics
INSERT INTO daily_metric VALUES
(101, 1, '2025-06-10', 5000, 76.5, 6.5),
(102, 2, '2025-06-10', 7000, 72.3, 7.0),
(103, 3, '2025-06-10', 4000, 80.1, 5.5),
(104, 4, '2025-06-10', 8500, 69.0, 8.0),
(105, 5, '2025-06-10', 3000, 88.2, 6.0),
(106, 6, '2025-06-10', 9500, 70.5, 7.5);

-- Mood Logs
INSERT INTO mood_log VALUES
(201, 1, '2025-06-10', '08:00:00', 3, 'Woke up tired'),
(202, 2, '2025-06-10', '09:00:00', 5, 'Feeling motivated'),
(203, 3, '2025-06-10', '10:00:00', 2, 'Under stress'),
(204, 4, '2025-06-10', '07:30:00', 4, 'Calm morning'),
(205, 5, '2025-06-10', '08:30:00', 3, 'Normal mood'),
(206, 6, '2025-06-10', '11:00:00', 5, 'Energized and ready');

-- Nutrition Logs
INSERT INTO nutrition_log VALUES
(301, 1, '2025-06-10', 'Breakfast', 'Chapati and chai', 350),
(302, 2, '2025-06-10', 'Lunch', 'Rajma chawal', 600),
(303, 3, '2025-06-10', 'Dinner', 'Ugali and sukuma', 500),
(304, 4, '2025-06-10', 'Breakfast', 'Poha and banana', 300),
(305, 5, '2025-06-10', 'Lunch', 'Pilau', 700),
(306, 6, '2025-06-10', 'Dinner', 'Idli sambar', 450);

-- Activity Logs
INSERT INTO activity_log VALUES
(401, 1, '2025-06-10', 'Walking', 30.0, 120),
(402, 2, '2025-06-10', 'Running', 45.0, 300),
(403, 3, '2025-06-10', 'Cycling', 60.0, 400),
(404, 4, '2025-06-10', 'Swimming', 40.0, 350),
(405, 5, '2025-06-10', 'Yoga', 50.0, 180),
(406, 6, '2025-06-10', 'Football', 90.0, 550);

-- Health Assessments
INSERT INTO health_assessment VALUES
(501, 1, '2025-06-10', 110, 70, 21.5, FALSE),
(502, 2, '2025-06-10', 120, 80, 22.3, FALSE),
(503, 3, '2025-06-10', 135, 85, 24.1, TRUE),
(504, 4, '2025-06-10', 115, 75, 23.0, FALSE),
(505, 5, '2025-06-10', 145, 95, 25.2, TRUE),
(506, 6, '2025-06-10', 118, 78, 22.7, FALSE);
