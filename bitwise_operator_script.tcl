set STATUS 12

# count how many sensors are active.

set message "cooling system OK"
set error_count [expr {($STATUS & 8)>>3 | ($STATUS & 4)>>2 | ($STATUS &2)>>1 | ($STATUS & 1)}]

if {$error_count} {
	set message "ALARM: Cooling system problem!"
}

# checking for critical failures

set critical_error [expr {($STATUS & 8)>>3 | ($STATUS & 4)>>2}]

if {$critical_error} {
	set message "COOLING SYSTEM ERROR: SYSTEM SHUTTING DOWN"
}

puts $message
