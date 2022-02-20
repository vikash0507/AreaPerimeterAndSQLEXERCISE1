Q1. Display all information in the tables EMP and DEPT

SELECT * FROM employees,departments 

Q2. Display only the hire date and employee name for each employee.

SELECT hire_date,first_name+' '+last_name as E_Name FROM employees

 Q3. Display the ename concatenated with the job ID,separated by a comma and space, 
     and name the column Employee and titel.

SELECT first_name+' '+last_name+','+CAST(job_id as varchar) as E_Name,first_name Title FROM employees 

Q4. Display the hire date , name, department number for all clerls.

SELECT hire_date,first_name+''+last_name as E_Name,department_id FROM employees

 Q5. Create a query to display all the data from the EMP table. Separate each column.
     Name the column THE_OUTPUT.

SELECT first_name+''+last_name as E_Name,employee_id,salary,phone_number,email,manager_id,job_id,hire_date,department_id FROM employees

Q6. Diaplay the names and salaries of all employees with a salary greater than 2000.

SELECT first_name+''+last_name as E_Name,salary FROM employees where salary>2000

 Q7. Display the names and dates of employees with the column headers "Name" and "Start Date".

 SELECT first_name+''+last_name as Name,hire_date as Start_Date FROM employees 

 Q8. Display the names and hires dates of employees in the order they were hired.

  SELECT first_name+''+last_name as Name,hire_date as Start_Date FROM employees ORDER BY Start_Date asc

 Q9. Display the names and salaries of all employees in reverse salaary order.

 SELECT first_name+''+last_name as Name,salary FROM employees ORDER BY salary desc

 Q10. Display 'ename' and 'deptno' who are all earned commission and display salary in reverse order.

 NOT COMMISSION IN TABLE

 Q11. Display the last name and job title of all employee who do not have a manager.

 SELECT employees.last_name,jobs.job_title,employees.employee_id FROM employees INNER JOIN jobs ON 
 employees.job_id=jobs.job_id WHERE ISNULL(manager_id,1)=1

Q12. Disployee the last name, job , and salary for all employee whose job is sales
 rwpresentative or stock clerk and whose salary in not equal to $2.500,$3.500 or $5.000

 SELECT last_name,jobs.job_title,salary FROM employees INNER JOIN jobs ON employees.job_id=jobs.job_id 
 WHERE jobs.job_title='SALES REPRESENTATIVE' OR jobs.job_title='PURCHASING CLERK' AND salary!=2500 AND salary!=3500 AND salary!=5000