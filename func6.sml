fun get_nth(strings : string list, n : int) = 
	if null strings 
	then "too small string list"
	else if n = 1
	then hd(strings)
	else get_nth(tl strings, n - 1)

val test1 = get_nth(["a", "b", "c", "d", "e", "f", "g", "h"], 5)
val test2 = get_nth(["a", "b", "c", "d", "e", "f", "g", "h"], 10);