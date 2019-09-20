SELECT e.fname, COUNT(DISTINCT(wo.pno)) FROM company.employee e 
JOIN company.works_on wo 
	ON e.ssn = wo.essn 
JOIN company.project p 
	ON wo.pno = p.pnumber AND p.plocation = 'Houston'
JOIN company.department d
	ON d.dnumber = e.dno
JOIN company.dept_locations dl
	ON dl.dnumber = d.dnumber AND dl.dlocation <> 'Houston'
GROUP BY e.fname;