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

fun the_oldest_date(dates : (int*int*int) list) = 
	if null dates
	then NONE
	else 
		let val min = the_oldest_date(tl dates)
		in if isSome min andalso is_older(valOf min, hd dates)
			then min
			else SOME (hd dates)
		end
			
val test1 = the_oldest_date([(2022, 10, 21), (2022, 5, 12), (2022, 7, 10), (2022, 11, 5)])
val test2 = the_oldest_date([])