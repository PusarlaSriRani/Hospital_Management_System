Insert Data

Insert Departments

INSERT INTO departments (dept_name, location) VALUES
('Cardiology', 'Block A'),
('Neurology', 'Block B'),
('Orthopedics', 'Block C');

-- Insert Doctors (3)

INSERT INTO doctors (name, specialization, phone, dept_id) VALUES
('Dr. Arjun Rao', 'Cardiologist', '9000000001', 1),
('Dr. Meena Sharma', 'Neurologist', '9000000002', 2),
('Dr. Kiran Reddy, Orthopedician', '9000000003, 3);

Insert Patients (5)

INSERT INTO patients (patient_id, name, dob, phone, address) VALUES
('P001', 'Sri Rani, 2003-04-10', '9876543210', 'Salur, Andhra Pradesh'),
('P002', 'Ravi Kumar', '1990-08-22', '9876543211", "Vizag, AP'),
('P003', 'Priya Devi', '1985-12-01, 9876543212', 'Hyderabad, Telangana'),
('P004', 'Suresh Babu, 1978-03-15', '9876543213", "Vijayawada, AP'),
('P005', 'Lakshmi Nair', '2000-07-30', '9876543214', 'Chennai, TN');

-- Insert Appointments (5)

INSERT INTO appointments (patient_id, doctor_id, appt_date, status, notes) VALUES
('P001', 1, '2025-06-01', 'Completed', 'Routine check-up'),
('P002', 2, '2025-06-02', 'Completed', 'Migraine follow-up'),
('P003', 1, '2025-06-03', 'Scheduled', 'ECG review'),
('P004', 3, '2025-06-04', 'Completed', 'Knee X-ray'),
('P001', 2, '2025-06-05', 'Scheduled', 'MRI scan review');

Insert Bills

INSERT INTO bills (appt id, amount, paid) VALUES
(1, 500.00, TRUE),
(2, 750.00, TRUE),
(3, 300.00, FALSE),
(4, 1200.00, TRUE),
( 5, 900.00, FALSE);
