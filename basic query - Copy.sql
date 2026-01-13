create database college;

use college;
create table student (
    id int primary key,
    name varchar(50),
    age int NOT NULL
);

INSERT INTO STUDENT VALUES(1, 'PRITESH', 26);
INSERT INTO STUDENT VALUES(2, 'RAHUL', 24);



select * from student;






