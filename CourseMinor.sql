-- creates the database tables 

DROP DATABASE IF EXISTS CourseMinor;
CREATE DATABASE CourseMinor;

USE CourseMinor;

-- TABLES --

-- Tables for minors, certificates, and courses 

CREATE TABLE IF NOT EXISTS minor (

	minorID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    description VARCHAR(255),
    totalHours int,
    remainingHours int, 
	PRIMARY KEY (minorID)
	
);

CREATE TABLE IF NOT EXISTS certificate (

	certificateID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    description VARCHAR(255),
    totalHours int,
    remainingHours int, 
	PRIMARY KEY (certificateID)
    
);

CREATE TABLE IF NOT EXISTS course (
 
	courseID INT NOT NULL AUTO_INCREMENT,
    prefix varchar(10), -- CSCI
    courseNumber int, -- 4810
    name varchar(20),
    minorID int, 
    certificateID int,
    PRIMARY KEY (courseID),
    FOREIGN KEY (minorID) REFERENCES minor(minorID),
	FOREIGN KEY (certificateID) REFERENCES certificate(certificateID)
    
	
);
