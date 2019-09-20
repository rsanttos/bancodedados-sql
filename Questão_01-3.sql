SELECT e.fname, e.minit, e.lname FROM company.employee e
WHERE e.super_ssn IN (
			SELECT e.ssn FROM company.employee e
			WHERE e.fname = 'Franklin' AND e.lname = 'Wong'
			);