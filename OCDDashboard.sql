-- ocd_dashboard.sql
CREATE TABLE IF NOT EXISTS ocd_patients (
    patient_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    symptom_duration_months INT,
    treatment_outcome VARCHAR(50)
);
SELECT gender, COUNT(*) AS patient_count
FROM ocd_patients
GROUP BY gender;
SELECT treatment_outcome, AVG(symptom_duration_months) AS avg_duration
FROM ocd_patients
GROUP BY treatment_outcome;
SELECT 
  CASE 
    WHEN age < 20 THEN '<20'
    WHEN age BETWEEN 20 AND 40 THEN '20-40'
    WHEN age BETWEEN 41 AND 60 THEN '41-60'
    ELSE '60+' END AS age_group,
  COUNT(*) AS patient_count
FROM ocd_patients
GROUP BY age_group;
