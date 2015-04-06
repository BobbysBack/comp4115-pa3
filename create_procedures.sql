delimiter //
create procedure getMatching(s varchar(50))
begin
select first_name,last_name from employees where last_name like s;
end //
delimiter ;

delimiter //
create procedure getAvg(d char(5))
begin
select departments.dept_no,departments.dept_name,avg(salary) as average_salary from departments join dept_emp on dept_emp.dept_no = departments.dept_no join salaries on dept_emp.emp_no = salaries.emp_no where departments.dept_no = d group by dept_emp.dept_no;
end //
delimiter ;

delimiter //
create procedure getNumSex(s char(1))
begin
if (s = 'M' or s = 'F')
then
select count(*) from employees where gender = s;
else 
select 'Invalid sex specified.';
end if;
end //
delimiter ;
