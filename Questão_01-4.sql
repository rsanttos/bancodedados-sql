SELECT e.fname, e.minit, e.lname FROM company.employee e 
INNER JOIN company.works_on wo 
	ON e.ssn = wo.essn 
GROUP BY e.ssn
HAVING count(e.ssn) = (SELECT COUNT(DISTINCT p.pnumber) FROM company.project p);