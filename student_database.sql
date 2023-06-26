-- Create the Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Create the Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    course_credits INT
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert sample data into the Students table
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number)
VALUES
    (1, 'John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890'),
    (2, 'Jane', 'Smith', '1992-08-22', 'Female', 'jane.smith@example.com', '9876543210'),
    (3, 'David', 'Johnson', '1991-03-10', 'Male', 'david.johnson@example.com', '4567890123');

-- Insert sample data into the Courses table
INSERT INTO Courses (course_id, course_name, course_description, course_credits)
VALUES
    (1, 'Mathematics', 'Introduction to mathematics', 4),
    (2, 'English Literature', 'Survey of English literature', 3),
    (3, 'Computer Science', 'Fundamentals of computer science', 5);

-- Insert sample data into the Enrollments table
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
    (1, 1, 1, '2023-01-05'),
    (2, 1, 2, '2023-01-05'),
    (3, 2, 1, '2023-01-10'),
    (4, 3, 3, '2023-02-01');
