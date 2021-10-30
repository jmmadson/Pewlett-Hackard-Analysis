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