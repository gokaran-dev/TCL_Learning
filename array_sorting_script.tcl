#A script for sorting arrays. Sorting arrays is an extension to printing arrays, where to 
#manipulate the array we need to essentially make it into a list


array set pets {
	Ann cat
	Joe Dog
	Joy Pig
	Arjit Rabbit
}

set keys [array names pets]

set sortedkey [lsort $keys]

puts "\n Sorted by Person"

foreach person $sortedkey {
	puts "Person $person Pet: $pets($person)"
}

#Trying to sort the list using get command. it gives us flexbility to choose either index,
#key or value to sort through

array set grades {
	Max 10
	Arjun 9.5
	Karshima 9.8
	Sniggy 7.3
	Dev 2.5
	Aslam 9.9
}


set gradeList [array get grades]
#This command will give us a list of keys. When we are printing, tcl travels throught this list.
#it figures out that first will be key, followed by its value.
puts "Grade List = $gradeList"

#=====sorting this list========
#However lsort expects sublists to effectively sort the list. We essentially need {{Ann, Dog} {Joe, Cat}}. Then lsort can sort.
#index 0 will refer to first element in the sublist, index 1 will refer to the value of the sublist

#making a proper list of pairs, before going to sorting.

set gradePairs [list]
foreach {person grade} $gradeList {
	lappend gradePairs [list $person $grade]
}

set sortedbygrade [lsort -increasing -real -index 1 $gradePairs]

#here foreach will process things as a pair of list. so we will get output as Person: Dev 2.5 grade: Sniggy 9.0 and so on.
#to fix this we need to have two foreach loops.

puts "\n Grades are sorted in ascending order"
foreach pair $sortedbygrade {
	foreach {name marks} $pair {
		puts "Person: $name \t Grade: $marks"
	}
}
