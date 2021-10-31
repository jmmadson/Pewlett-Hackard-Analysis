# Pewlett Hackard Analysis

## Overview:
The purpose of this analysis is to help the management team at Pewlett Hackard prepare for the retirement of a mass number of employees from their team. They asked us to review their current employee and department information, which was spread across many data sheets to determine how many people will be eligible for retirement and what titles and roles those team members belong to.  

The management team also wanted to know how many employees would be eligible to participate in a mentorship program to reduce the loss of skill and knowledge from such a large portion of the workforce leaving at once. Using a database with multiple tables we combined, organized, and filtered the data to come to our conclusions. 

## Results:

From our data manipulation and analysis we've learned the following: 

1. There are 90,389 employees at Pewlett Hackard that are coming up on their retirement. 
2. Each department at Pewlett Hackard has eligible employees who could participate in the mentorship program.


![Query Mentorship Eligibility by Department](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_Eligible_by_dept.png?raw=true)

3. Senior Engineers and Senior Staff make up 64% of the retirement elibile employees

![Retirement Titles](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_by_title.png?raw=true)

4. While there are 1,549 employees who would qualify for the mentorship program, none of those eligible employees are managers. 

## Summary: 

Based on age of current employees, in the coming years Pewlett Hackard will lose 90,398 employees to retirement. While some additional analysis should be performed to determine if every one of those roles is still necessary, there are still a significant number of positions that will need to be filled. Initially, that number can be reduced by not replacing the part time employees participating in the mentorship program. Ideally those roles can be filled by the 1,549 current employees trained through the mentorship program if everyone eligible participates. 

Overall, there are enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees in all departments. There are 70 or more qualified retirees in each of the nine departments at Pewlett Hackard, so even if all eligible retirees do not want to participate there should still be enough to help train the upcoming work force. 

The following is the additional query I had to run to determine if there were enough employees by department eligible to participate: 
<br>
![Query: Mentorship Eligible Retirees by Department](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/Dept_Query.png) 

The additional table output from that query is here: [Mentorship By Department](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_by_department)

Upon further analysis of eligibility by title I noticed there is a lack of eligible employees in management positions. Fortunately, many outside Management programs and certificates are available to train senior employees looking to advance their careers to the next level. You can see this by looking at the Retirement Eligible Employees by Title Table as compared to the Mentorship Eligibility by Title Table below. 
<br>

![Query: Mentorship Eligibility by Title](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_By_Title.png) ![Query: Total Retirees by Title](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_by_title.png)

This is the additional query used to generate those tables for this report. 
<br>

![Query: Eligibility by Title](https://github.com/jmmadson/Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship_Title_Query.png)



