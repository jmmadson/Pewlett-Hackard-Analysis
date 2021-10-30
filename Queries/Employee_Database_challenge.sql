-- Create the Retirement Titles Table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
-- Into retirement_titles
From employees as e
Inner Join titles as t
ON (e.emp_no = t.emp_no)

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;  

-- Select Distinct Records
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
	FROM retirement_titles
	ORDER BY emp_no, to_date DESC;

-- Count employees by job titles about to retire
Select Count(title), title as titles 
INTO retiring_titles
FROM unique_titles
Group By title
Order By (count)DESC;


-- Create Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title	
Into membership_eligibility	
FROM employees as e
	Inner Join dept_employee as de
	ON (e.emp_no = de.emp_no)

	Inner Join titles as t
	on (e.emp_no = t.emp_no)
	
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;  

-- Deliverable 3 Additional Analysis Queries

-- Mentorship Eligible Retiree's by Title
Select Count(title), title as titles 
FROM membership_eligibility
Group By title
Order By(count) DESC;

-- Create Department Mentorship Eligibility table
SELECT DISTINCT ON (me.emp_no) me.emp_no,
	me.first_name,
	me.last_name,
	de.dept_no,
	d.dept_name
Into dept_membership_eligibility	
FROM membership_eligibility as me
	Inner Join dept_employee as de
	ON (me.emp_no = de.emp_no)

	Inner Join departments as d
	on (de.dept_no = d.dept_no)
ORDER BY emp_no;  


-- Mentorship Eligible Retiree's by Department
Select Count(dept_name), dept_name as Department 
FROM dept_membership_eligibility
Group By dept_name
Order By(count) DESC;


-- Departments 
Select * from departments;
