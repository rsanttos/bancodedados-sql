SELECT s.fname, s.minit, s.lname FROM gradebook.students s
LEFT JOIN gradebook.enrolls e 
	ON e.students_sid = s.sid 
WHERE e.courses_term IS NULL AND e.courses_secno IS NULL AND e.students_sid IS NULL;