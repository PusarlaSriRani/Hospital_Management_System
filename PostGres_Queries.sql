1. Display All Elements

SELECT * FROM patients;

2. Display All Doctors

SELECT FROM doctors;

3. Find Appointments for a Specific Doctor

SELECT a.appt_id, p.name AS patient_name,
a.appt date, a, status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
WHERE a.doctor_id= 1; Change 1 to any doctor_id

4.Count Appointments Per Doctor

SELECT d.name AS doctor_name,
COUNT(a.appt_id) AS total_appointments FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name
ORDER BY total_appointments DESC;

5. Total Billing Amount

SELECT SUM(amount) AS total_billing FROM bills;

6. INNER JOIN: Patients and Appointments

SELECT p.name AS patient_name, p.phone,
a.appt_date, a.status FROM patients p
INNER JOIN appointments a ON p.patient_ida.patient_id;
Query 

7.LEFT JOIN: Doctors and Appointments
  
SELECT d.name AS doctor_name, d.specialization,
a.appt_date, a.status
FROM doctors d
LEFT JOIN appointments a ON d.doctor_ida.doctor_id;

8. Patients with More Than One Appointment

SELECT p.name, COUNT(a.appt_id) AS visit_count FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.name
HAVING COUNT(a.appt_id) 1;
Query 

9. Highest Bill Amount

SELECT p.name AS patient_name,
b. amount AS highest_bill
FROM bills b
JOIN appointments a ON b.appt_id = a.appt_id
JOIN patients p ON a.patient_id p.patient_id
ORDER BY b.amount DESC
LIMIT 1;

10. Doctor with Maximum Appointments

SELECT d.name AS doctor_name,
COUNT(a.appt_id) AS appointment_count
FROM doctors d
JOIN appointments ON d.doctor_id = a.doctor_id
GROUP BY d.name
ORDER BY appointment_count DESC

LIMIT 1;
