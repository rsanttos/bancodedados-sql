SELECT e.fname, e.minit, e.lname FROM company.employee e 
JOIN company.works_on wo 
	ON e.ssn = wo.essn AND e.dno = 5 AND wo.hours > 10 
JOIN company.project p 
	ON wo.pno = p.pnumber AND p.pname = 'ProductX';