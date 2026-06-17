1. Department Table

CREATE TABLE departments (
dept_id SERIAL PRIMARY KEY,
dept_name VARCHAR(100) NOT NULL,
location VARCHAR(100) NOT NULL
);


2. Doctors Table

CREATE TABLE doctors (
doctor_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
specialization VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL, 
dept_id INT NOT NULL, 
FOREIGN KEY (dept_id) REFERENCES departments (dept_id)
);

3. Patients Table

CREATE TABLE patients (
patient_id VARCHAR(10) PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
dob DATE NOT NULL, 
phone VARCHAR(15) NOT NULL, 
address TEXT NOT NULL
);

4. Appointments Table

CREATE TABLE appointments (
appt_id SERIAL PRIMARY KEY,
patient_id VARCHAR(10) NOT NULL,
doctor_id INT NOT NULL, 
appt_date DATE NOT NULL, 
status VARCHAR(20) DEFAULT 'Scheduled',
notes TEXT,
FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

5. Bills Table

CREATE TABLE bills (
bill id SERTAL PRIMARY KEY,
appt_id INT NOT NULL UNIQUE,
amount DECIMAL(10, 2) NOT NULL,
paid BOOLEAN DEFAULT FALSE,
FOREIGN KEY (appt_id) REFERENCES appointments(appt_id) 
);
