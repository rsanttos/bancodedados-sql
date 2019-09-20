SELECT e.fname, e.minit, e.lname FROM company.employee e
JOIN company.dependent d 
	ON e.ssn = d.essn AND d.dependent_name = e.fname;
