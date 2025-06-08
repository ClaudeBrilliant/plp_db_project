

-- 1. Departments
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Doctors
CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20) UNIQUE,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 3. Patients
CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20) UNIQUE,
    DateOfBirth DATE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL
);

-- 4. Appointments
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Reason TEXT,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- 5. Treatments
CREATE TABLE Treatments (
    TreatmentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT NOT NULL,
    Description TEXT NOT NULL,
    Prescription TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- 6. Payments
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    AppointmentID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod ENUM('Cash', 'Credit Card', 'Insurance') NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
