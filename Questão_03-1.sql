SELECT s.fname, s.minit, s.lname FROM gradebook.students s
JOIN gradebook.enrolls e 
	ON e.students_sid = s.sid
JOIN gradebook.courses c
	ON e.courses_secno = c.secno AND e.courses_term = c.term AND c.term = 'f96'
JOIN gradebook.catalogue cat
	ON cat.cno = c.cno AND cat.ctitle = 'Automata';