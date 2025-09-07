
proc fibonacci {n} {
	if {$n == 0} {
		puts {fibonacci series will need atleast one term}
	}

	set a 0
	set b 1
	
	puts "fibonacci serires up to $n terms:"
	for {set i 0} {$i <= $n} {incr i} {
		puts $a
		set temp $b
		set b [expr {$a + $b}]
		set a $temp
	}
}

fibonacci 12
