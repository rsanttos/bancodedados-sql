SELECT DISTINCT(e.fname), e.minit, e.lname, e.address FROM company.employee e 
JOIN company.works_on wo 
	ON e.ssn = wo.essn 
JOIN company.project p 
	ON wo.pno = p.pnumber AND p.plocation = 'Houston'
WHERE e.dno NOT IN (SELECT d.dnumber FROM company.dept_locations d WHERE dlocation = 'Houston');    