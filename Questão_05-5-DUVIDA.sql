SELECT DISTINCT (s.name) FROM bookadoption.students s
LEFT JOIN bookadoption.enrolls e
	ON e.students_ssn = s.ssn
LEFT JOIN bookadoption.courses c
	ON e.courses_cnum = c.cnum
LEFT JOIN bookadoption.bookuses b
	ON b.courses_cnum = c.cnum
LEFT JOIN bookadoption.books book
	ON b.books_isbn = book.isbn AND book.author <> 'Navathe' AND book.publisher <> 'Addison Wesley';
