fun is_older(date1: int*int*int, date2:int*int*int) = 
	if (#1 date1) < (#1 date2)
	then true
	else if (#1 date1) > (#1 date2)
	then false
	else 
		if (#2 date1) < (#2 date2)
		then true
		else if (#2 date1) > (#2 date2)
		then false
		else 
			if (#3 date1) < (#3 date2)
			then true
			else false
			
val test1 = is_older((2021, 5, 21),(2021, 5, 21))
val test2 = is_older((2021, 5, 21),(2021, 5, 22))
val test3 = is_older((2021, 5, 23),(2021, 5, 22))