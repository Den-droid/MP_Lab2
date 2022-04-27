fun get_nth(strings : string list, n : int) = 
	if null strings 
	then "too small string list"
	else if n = 1
	then hd(strings)
	else get_nth(tl strings, n - 1)

val months_strings = ["January", "February", "March", "April", "May", "June", 
			"July", "August", "September", "October", "November", "December"]
fun date_to_string(date: int*int*int) = 
	let 
		val month = get_nth(months_strings, (#2 date))
		val result = month ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
	in result
	end
	
val test1 = date_to_string((2022, 10, 21))
val test2 = date_to_string((2021, 5, 28))