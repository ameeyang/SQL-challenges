-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Employee` (
    `Employee_No` INT  NOT NULL ,
    `Birth_Date` DATE  NOT NULL ,
    `First_Name` VARCHAR  NOT NULL ,
    `Last_Name` VARCHAR  NOT NULL ,
    `Gender` VARCHAR  NOT NULL ,
    `Hire_Date` VARCHAR  NOT NULL 
);

CREATE TABLE `Departments` (
    `Department_No` VARCHAR  NOT NULL ,
    `Department_Name` VARCHAR  NOT NULL 
);

CREATE TABLE `Department_Employee` (
    `Employee_No` INT  NOT NULL ,
    `Department_No` VARCHAR  NOT NULL ,
    `From_Date` VARCHAR  NOT NULL ,
    `To_Date` VARCHAR  NOT NULL 
);

CREATE TABLE `Department_Manager` (
    `Department_No` VARCHAR  NOT NULL ,
    `Employee_No` INT  NOT NULL ,
    `From_Date` VARCHAR  NOT NULL ,
    `To_Date` VARCHAR  NOT NULL 
);

CREATE TABLE `Salaries` (
    `Employee_No` INT  NOT NULL ,
    `Salary` INT  NOT NULL ,
    `From_Date` VARCHAR  NOT NULL ,
    `To_Date` VARCHAR  NOT NULL 
);

CREATE TABLE `Titles` (
    `Employee_No` INT  NOT NULL ,
    `Title` VARCHAR  NOT NULL ,
    `From_Date` VARCHAR  NOT NULL ,
    `To_Date` VARCHAR  NOT NULL 
);

ALTER TABLE `Employee` ADD CONSTRAINT `fk_Employee_Employee_No` FOREIGN KEY(`Employee_No`)
REFERENCES `Department_Employee` (`Employee_No`);

ALTER TABLE `Departments` ADD CONSTRAINT `fk_Departments_Department_No` FOREIGN KEY(`Department_No`)
REFERENCES `Department_Manager` (`Department_No`);

ALTER TABLE `Department_Employee` ADD CONSTRAINT `fk_Department_Employee_Employee_No` FOREIGN KEY(`Employee_No`)
REFERENCES `Salaries` (`Employee_No`);

ALTER TABLE `Department_Employee` ADD CONSTRAINT `fk_Department_Employee_Department_No` FOREIGN KEY(`Department_No`)
REFERENCES `Departments` (`Department_No`);

ALTER TABLE `Department_Manager` ADD CONSTRAINT `fk_Department_Manager_Employee_No` FOREIGN KEY(`Employee_No`)
REFERENCES `Employee` (`Employee_No`);

ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_Employee_No` FOREIGN KEY(`Employee_No`)
REFERENCES `Titles` (`Employee_No`);

