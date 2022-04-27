fun number_in_month(dates_list : (int*int*int) list, month : int) = 
	if null dates_list
	then 0
	else
		if (#2 (hd dates_list)) = month
		then 1 + number_in_month(tl dates_list, month)
		else 0 + number_in_month(tl dates_list, month)

val test1 = number_in_month([(2021, 10, 21),(2022, 10, 22), (2022, 9, 22), 
							(2022, 11, 22), (2022, 10, 20)], 10)
val test2 = number_in_month([], 10)