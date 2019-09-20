SELECT e.fname, e.minit, e.lname FROM company.employee e
JOIN company.department dpt 
	ON dpt.mgr_ssn = e.ssn AND e.ssn NOT IN (SELECT d.essn FROM company.dependent d);