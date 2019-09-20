SELECT s.sid FROM gradebook.students s
JOIN gradebook.enrolls e 
	ON e.students_sid = s.sid
JOIN gradebook.courses c
	ON e.courses_secno = c.secno 
	AND e.courses_term = c.term 
	AND c.cno = 'csc226';