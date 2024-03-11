SELECT e1.emp_id,e1.emp_name,e2.EMP_NAME as manager,e2.MANAGER_ID
FROM Employee e1, Employee e2
where e1.manager_id = e2.EMP_ID ;

SELECT emp_name, Salary
FROM (SELECT emp_name, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS rank_salary
      FROM Employee) AS RankedSalaries
WHERE rank_salary = 3;

select s.STUDENT_NAME,COUNT(sc.S_ID) as total_courses from STUDENTS s,STUDENT_COURSES sc
where s.STUDENT_ID  = sc.S_ID
group by sc.S_ID;

select s.STUDENT_NAME,c.C_NAME from STUDENTS s,STUDENT_COURSES sc,COURSES c
where s.STUDENT_ID  = sc.S_ID
  and c.C_ID  = sc.C_ID order by s.STUDENT_NAME ;

select s.STUDENT_NAME,GROUP_CONCAT(c.C_NAME SEPARATOR ',') courses from STUDENTS s,STUDENT_COURSES sc,COURSES c
where s.STUDENT_ID  = sc.S_ID
  and c.C_ID  = sc.C_ID
group by s.STUDENT_NAME ;