# safe flying height for a drone after analysing the obstacles in its normal flight path

proc controlDroneHeight {heights} {
	puts "List of obstacle heights: $heights"

	# Find the maximum height of the obstacle
	set maxheight 0
	foreach obstacle $heights {
		set maxheight [expr {max($maxheight, $obstacle)}]
	}

	puts "Maximum obstacle height: $maxheight"

	set targetHeight [expr {($maxheight*100) + 30}]

	# Rounding off to the neareset whole number
	set roundedHeight [expr {ceil($targetHeight)}]
	set finalHeight [expr {$roundedHeight / 100.0}]
	puts "Target height for the drone: $finalHei"
}

# Generate a list of 5 random obstacle heights

set obstacleHeights {}

for {set i 0} {$i < 5} {incr $i} {
	lappend obstacleHeights [expr {1 + rand() * 4}]
}

# calling the control drone height procedure
controlDroneHeight $obstacleHeights 
