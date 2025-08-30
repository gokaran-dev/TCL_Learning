set grades {80 95 70 85 90 92 88 75 82 78}
set count 0
set sum 0

foreach grade $grades {
    set sum   [expr {$sum + $grade}]
    set count [expr {$count + 1}]
}

set avg [expr {$sum / double($count)}]

puts "Total number of students in the class: $count"
puts "Average grade in the class: $avg"

set sorted [lsort -integer $grades]

#lsort $grades will not change the original list and hence will cause unintended errors

puts "Lowest grade in class:  [lindex $sorted 0]"
puts "Highest grade in class: [lindex $sorted end]"

#another list containing students who scored 80 and above.

set passed ""

foreach grade $grades {
	if {$grade >= 80} {
		lappend passed $grade
	}
}

puts "There are [llength $passed] students who passed"
