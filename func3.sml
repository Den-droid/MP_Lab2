fun number_in_month(dates_list : (int*int*int) list, month : int) = 
	if null dates_list
	then 0
	else
		if (#2 (hd dates_list)) = month
		then 1 + number_in_month(tl dates_list, month)
		else 0 + number_in_month(tl dates_list, month)

fun number_in_months(dates_list : (int*int*int) list, month : int list) = 
	if null month
	then 0
	else number_in_month(dates_list, hd month) + number_in_months(dates_list, tl month)

val test1 = number_in_months([(2021, 10, 21),(2022, 10, 22), (2022, 9, 22), 
							(2022, 11, 22), (2022, 10, 20)], [9, 10])
val test2 = number_in_months([],[9, 10])