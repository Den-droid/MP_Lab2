fun number_before_reaching_sum(sum : int, num_list : int list) = 
	if sum - (hd num_list) < 0
	then 0
	else 1 + number_before_reaching_sum(sum - (hd num_list), tl num_list)
	
val test1 = number_before_reaching_sum(11, [10,10,10,10])
val test2 = number_before_reaching_sum(22, [1,2,3,4,5,10]);
val test3 = number_before_reaching_sum(22, [1,2,3,4,5,6])