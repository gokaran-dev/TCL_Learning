set n 5

proc factorial {n} {
	if {$n == 0} {
		return 1
	} else {
		return [expr $n * [factorial [expr {$n - 1} ] ] ]
	}
}

puts "factorial value is: [factorial $n ]"
