fun dates_in_month(dates_list : (int*int*int) list, month : int) = 
	if null dates_list
	then []
	else
		if (#2 (hd dates_list)) = month
		then (hd dates_list) :: dates_in_month(tl dates_list, month)
		else dates_in_month(tl dates_list, month)
		
val test1 = dates_in_month([(2021, 10, 21),(2022, 10, 22), (2022, 9, 22), 
							(2022, 11, 22), (2022, 10, 20)], 10)
val test2 = dates_in_month([], 10)