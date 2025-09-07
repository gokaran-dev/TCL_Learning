# we will be calculating area and perimeter upto 2 decimal places.
# we need to use command line options

proc parseOptions {} {
	global argv
	array set options {}

	set i 0
	while {$i < [llength $argv]} {
		set arg [lindex $argv $i]

		if {[string equal $arg "-l"] || [string equal $arg "--length"]} {
			set options(length) [lindex $argv [incr i]]
			#puts "Length set to $options(Length)"
		} elseif {[string equal $arg "-w"] || [string equal $arg "--width"]} {
			set options(width) [lindex $argv [incr i]]
			#puts "Width set to $options(width)"
		} else {
			puts "Unkown option: $arg"
			usage
			exit 1
		}
		incr i
	}
	return [array get options]
}

# Calculate area and perimeter

proc calculateRectangle {length width} {
	set area [expr {$length * $width}]
	set perimeter [expr {2 * ($length + $width)}]

	return [list $area $perimeter]
}

# Display usage information 
proc usage {} {
	puts "usage:"
	puts "OPTIONS:"
	puts "-l, --length specify the length of the rectangle"
	puts "-w, --width specify the width of the rectangle"
	puts "-------------------------------------------------"
}

# Main script execution

proc main {} {
	
	# parse command line options
	array set options {}
	array set options [parseOptions]

	# Check if required options are provided
	if {[info exists options(length)] && [info exists options(width)]} {
		set length $options(length)
		set width $options(width)

		# calculate area and perimeter
		set result [calculateRectangle $length $width]
		set area [format "%.2f" [lindex $result 0]]
		set perimeter [format "%.2f" [lindex $result 1]]

		# Display results
		puts "Rectangle Dimensions:"
		puts "Length: $length"
		puts "Width: $width"
		puts "-----------------------------------------"
		puts "Area: $area"
		puts "Perimeter: $perimeter"

	} else {
		usage
		exit 1
	}
}

main
