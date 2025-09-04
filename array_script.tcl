#a small script to develop familirization with arrays

array set pets {
	'Ann' cat
	'Joe' dog
	'Joy' ferret
	'Arjit' pig
}

#method 1: converting the array into a list and then accessing array elements.
#we iterate over only one variable here. Useful when we may have use for only key.
#this function will give us the key, and then in the secon iteration bind the key to a value.
#its like, first we take the keys, and then lookup those keys in the array to find the value.

set keys [array names pets]
foreach person $keys {
	puts "Person: $person Pet: $pets($person)"

}

#method 2: use the petList command. This is useful when we need both key and the value.
#Here the entire array gets converted into a list, where [ann cat joe dog]. TCL then pairs the enteries together

set petList [array get pets]
foreach {key value} $petList {
	
	puts "Person: $key Pet: $value"
}
