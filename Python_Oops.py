# Hospital Management System — Python OOP

class Person:
"""Base class — Encapsulation + Constructor"""
def __init__(self, person_id, name, phone):
# Private attributes (Encapsulation)
self.__person_id = person_id
self.__name = name
self.__phone = phone
# Getters (accessing private data safely)
def get_id(self): return self.__person_id
def get_name(self): return self.__name
def get_phone(self): return self.__phone
# Setter (with validation)
def set_phone(self, phone):
if len(phone) == 10 and phone.isdigit():
self.__phone = phone
else:
print(" Invalid phone number!")
def display(self):
print(f" ID : {self.__person_id}")
print(f" Name : {self.__name}")
print(f" Phone: {self.__phone}")
# Patient Class (Inheritance from Person) 
class Patient(Person):
def __init__(self, patient_id, name, phone, dob, address):
super().__init__(patient_id, name, phone) # call parent constructor
self.dob = dob
self.address = address
self.__appointments = [] # private list
def add_appointment(self, appt_date, doctor_name):
self.__appointments.append({
"date": appt_date,
"doctor": doctor_name
})
def get_appointments(self):
return self.__appointments
def display(self):
print("PATIENT DETAILS")
print(" " * 30)
super().display()
print(f" DOB : {self.dob}")
print(f" Address: {self.address}")
appts = self.get_appointments()
if appts:
print(f" Appointments ({len(appts)}):")
for a in appts:
print(f" • {a['date']} with {a['doctor']}")
#Doctor Class (Inheritance from Person)
class Doctor(Person):
def __init__(self, doctor_id, name, phone, specialization, dept):
super().__init__(doctor_id, name, phone)
self.specialization = specialization
self.dept = dept
self.__patients = []
def add_patient(self, patient_name):
self.__patients.append(patient_name)
def get_patient_count(self):
return len(self.__patients)
def display(self):
print("DOCTOR DETAILS")
print(" " * 30)
super().display()
print(f" Specialization: {self.specialization}")
print(f" Department : {self.dept}")
print(f" Total Patients: {self.get_patient_count()}")
