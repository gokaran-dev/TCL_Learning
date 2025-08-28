set lumens [expr {rand()*100}]
set bulb_power [expr {$lumens>60?1:0}]

if {$bulb_power} {
	puts "bulb was turned ON"
} else {
	puts "bulb was turned OFF"
}
