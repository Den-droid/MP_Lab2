val month_days = [(1, 31), (2, 28), (3, 31), (4, 30), (5, 31), (6, 30), 
					(7, 31), (8, 31), (9, 30),(10, 31), (11, 30), (12, 31)];

fun what_month(day_of_year: int, months: (int*int) list) = 
	if day_of_year - (#2 (hd months)) <= 0
	then (#1 (hd months))
	else what_month(day_of_year - (#2 (hd months)), tl months)
	
val test1 = what_month(143, month_days)
val test2 = what_month(90, month_days);