#calculating power of 2 for numbers ranging from 1 to 10
puts "------------------"
puts "square of first 10 numbers are:"

for {set i 1} {$i<11} {incr i} {
	puts "$i^2 = [expr { pow($i,2) } ]"
}
