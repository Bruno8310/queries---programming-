create database demo;

use demo;

create table student(
    id INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    sex VARCHAR(5) NOT NULL,
    PRIMARY KEY (id)
);

create table subject(
    id INT NOT NULL,
    subject VARCHAR(10) NOT NULL,
    teacher VARCHAR(10) not NULL,
    description VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

create table score(
    id INT NOT NULL,
    student_id int NOT NULL,
    subject_id int NOT NULL,
    score FLOAT NOT NULL,
    PRIMARY KEY (id)
);