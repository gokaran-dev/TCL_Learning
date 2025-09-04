#We will be handling the decay of a radioactive material here.

set substance 540
set decay 0.2
set substance_left 0
set time 0

while {$time <= 10} {
	set time [expr {$time + 0.5 } ]
	set substance_left [ expr { $substance * (1 - $decay)**$time } ]

	if {$substance_left < 1} {
		break
	}

}

if {$substance_left > 1} {
	puts "Time ranout, remaining radioactive material is $substance_left grams"
} else {
	puts "environment is clean enough"
}
