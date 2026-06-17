MongoDB Commands 

//1. insertOne() — Add one patient
db.patients.insertOne({
patient_id: "P001",
name: "Sri Rani",
dob: "2003-04-10",
phone: "9876543210",
city: "Salur",
state: "Andhra Pradesh"
});

//2. insertMany() — Add more patients
db.patients.insertMany([
{ patient_id:"P002", name:"Ravi Kumar", city:"Vizag", phone:"9876543211" },
{ patient_id:"P003", name:"Priya Devi", city:"Hyderabad", phone:"9876543212" },
{ patient_id:"P004", name:"Suresh Babu", city:"Vijayawada", phone:"9876543213" },
{ patient_id:"P005", name:"Lakshmi Nair", city:"Chennai", phone:"9876543214" }
]);
APPOINTMENTS Collection

//3. insertOne() — Add one appointment
db.appointments.insertOne({
appt_id: "A001",
patient_id: "P001",
doctor_id: "D001",
appt_date: "2025-06-01",
status: "Completed",
bill: 500
});

//4. insertMany() — Add more appointments
db.appointments.insertMany([
{ appt_id:"A002", patient_id:"P002", doctor_id:"D002",
appt_date:"2025-06-02", status:"Completed", bill:750 },
{ appt_id:"A003", patient_id:"P003", doctor_id:"D001",
appt_date:"2025-06-03", status:"Scheduled", bill:300 },
{ appt_id:"A004", patient_id:"P004", doctor_id:"D003",
appt_date:"2025-06-04", status:"Completed", bill:1200 },
{ appt_id:"A005", patient_id:"P001", doctor_id:"D002",
appt_date:"2025-06-05", status:"Scheduled", bill:900 }
]);
find() — Display all patients------
db.patients.find().pretty();

find() with filter — Scheduled appointments
db.appointments.find({ status: "Scheduled" }).pretty();
updateOne() — Update patient phone
db.patients.updateOne(
{ patient_id: "P001" },
{ $set: { phone: "9999999999" } }
);
deleteOne() — Remove an appointment
db.appointments.deleteOne({ appt_id: "A005" });
Aggregation: Count patients city-wise
db.patients.aggregate([
{ $group: { _id: "$city", total_patients: { $sum: 1 } } },
{ $sort: { total_patients: -1 } }
]);
db.appointments.aggregate([
{ $group: { _id: null, total_billing: { $sum: "$bill" } } }
]);
