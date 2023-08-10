-- Drop the table if it already exists
USE OurExerciseDb;
IF OBJECT_ID('dbo.StudentRegistrations', 'U') IS NOT NULL
    DROP TABLE dbo.StudentRegistrations;

-- Create the database
CREATE DATABASE OurExerciseDb
ON PRIMARY (
    NAME = OurExerciseDb_Data,
    FILENAME = 'D:\Exercises\OurExerciseDb.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON (
    NAME = OurExerciseDb_Log,
    FILENAME = 'D:\Exercises\OurExerciseDb.ldf'
);

-- Use the newly created database
USE OurExerciseDb;

-- Create the StudentRegistrations table
CREATE TABLE dbo.StudentRegistrations (
    StudentId INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    PRIMARY KEY (StudentId, CourseCode)
);

-- Insert sample records
INSERT INTO dbo.StudentRegistrations (StudentId, CourseCode, RegistrationDate) VALUES
    (1, 'CSCI101', '2023-08-01'),
    (1, 'MATH202', '2023-08-02'),
    (2, 'PHYS101', '2023-08-03'),
    (3, 'HIST103', '2023-08-04'),
    (4, 'CHEM201', '2023-08-05');

-- Query the inserted records
SELECT * FROM dbo.StudentRegistrations;
