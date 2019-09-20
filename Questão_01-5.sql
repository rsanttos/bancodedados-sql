SELECT e.fname, e.minit, e.lname FROM company.employee e 
LEFT JOIN company.works_on wo 
	ON e.ssn = wo.essn 
WHERE wo.pno IS NULL;