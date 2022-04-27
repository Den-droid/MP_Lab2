fun dates_in_month(dates_list : (int*int*int) list, month : int) = 
	if null dates_list
	then []
	else
		if (#2 (hd dates_list)) = month
		then (hd dates_list) :: dates_in_month(tl dates_list, month)
		else dates_in_month(tl dates_list, month)

fun dates_in_months(dates_list : (int*int*int) list, month : int list) = 
	if null month
	then []
	else dates_in_month(dates_list, hd month) :: dates_in_months(dates_list, tl month)

val test1 = dates_in_months([(2021, 10, 21),(2022, 10, 22), (2022, 9, 22), 
					(2022, 11, 22), (2022, 10, 20)], [9, 10])
val test2 = dates_in_months([], [9, 10])