
CREATE TABLE p_Table.Worker (
 WORKER_ID INT NOT NULL PRIMARY KEY,
 FIRST_NAME CHAR(25),
 LAST_NAME CHAR(25),
 SALARY INT(15),
 JOINING_DATE DATETIME,
 DEPARTMENT CHAR(25)
);

Select * from p_Table.Worker;

INSERT INTO p_Table.Worker 
 (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
  (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
  (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
  (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
  (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
  (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
  (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
  (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
  (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

Select * from p_Table.Worker;

Alter table p_Table.Worker add column mobile_num int ;

Select * from p_Table.Worker;

Select distinct department from p_Table.Worker;

SELECT SUM(SALARY) FROM p_Table.Worker WHERE DEPARTMENT = 'HR' ;
SELECT SUM(SALARY) FROM p_Table.Worker WHERE DEPARTMENT = 'Admin' ;
SELECT SUM(SALARY) FROM p_Table.Worker WHERE DEPARTMENT = 'Account' ;

SELECT DEPARTMENT,SUM(SALARY) FROM p_Table.Worker WHERE Department not in ('Account') GROUP BY DEPARTMENT ;

SELECT DEPARTMENT,SUM(SALARY) FROM p_Table.Worker  GROUP BY DEPARTMENT having Department not in ('Account');

SELECT DEPARTMENT,avg(SALARY) FROM p_Table.Worker   GROUP BY DEPARTMENT  Having avg(SALARY) > 250000;

SELECT DEPARTMENT,SUM(SALARY) FROM p_Table.Worker WHERE Department not in ('Account') GROUP BY DEPARTMENT ;


