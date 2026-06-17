# In-memory list to store patient records
patients_db = []

# Function to add a new patient
def add_patient():
    print("\nADD PATIENT")

    # Get patient details from the user
    pid = input("Enter Patient ID: ")
    name = input("Enter Patient Name: ")
    phone = input("Enter Phone Number: ")
    dob = input("Enter DOB (YYYY-MM-DD): ")
    addr = input("Enter Address: ")

    # Check if the Patient ID already exists
    for p in patients_db:
        if p["patient_id"] == pid:
            print("Patient ID already exists!")
            return

    # Add patient details to the list
    patients_db.append({
        "patient_id": pid,
        "name": name,
        "phone": phone,
        "dob": dob,
        "address": addr
    })

    # Display success message
    print(f"Patient '{name}' added successfully!")


# Function to display all patients
def view_patients():
    print("\nALL PATIENTS")

    # Check if the patient list is empty
    if not patients_db:
        print("No patients found.")
        return

    # Print table header
    print(f"{'ID':<10}{'Name':<20}{'Phone':<15}{'DOB'}")
    print("-" * 55)

    # Display each patient's details
    for p in patients_db:
        print(f"{p['patient_id']:<10}{p['name']:<20}{p['phone']:<15}{p['dob']}")


# Function to search for a patient
def search_patient():
    print("\nSEARCH PATIENT")

    # Get search keyword
    keyword = input("Enter Name or Patient ID: ").lower()

    # Find matching patients
    results = [
        p for p in patients_db
        if keyword in p["name"].lower()
        or keyword in p["patient_id"].lower()
    ]

    # Display search results
    if results:
        for p in results:
            print(f"Found: {p['patient_id']} - {p['name']} | {p['phone']} | {p['address']}")
    else:
        print("No patient found with that keyword.")


# Main function to display the menu
def main():
    print("=" * 40)
    print("HOSPITAL MANAGEMENT SYSTEM")
    print("=" * 40)

    # Run the menu until the user exits
    while True:
        print("\nMENU")
        print("1. Add Patient")
        print("2. View Patients")
        print("3. Search Patient")
        print("4. Exit")

        # Read user choice
        choice = input("Enter choice (1-4): ").strip()

        # Perform the selected operation
        if choice == "1":
            add_patient()

        elif choice == "2":
            view_patients()

        elif choice == "3":
            search_patient()

        elif choice == "4":
            print("Goodbye!")
            break

        else:
            print("Invalid choice! Please enter 1-4.")


# Program execution starts here
if __name__ == "__main__":
    main()
