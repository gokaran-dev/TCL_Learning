set rand [expr {rand()}]

if {$rand < 0.33} {
    set semaphore "red"
} elseif {$rand < 0.66} {
    set semaphore "yellow"
} else {
    set semaphore "green"
}

puts "Semaphore is $semaphore"

set distance [expr {rand()*100}]
puts "Distance = $distance m"

set too_close 20.0

if {$semaphore == "green"} {
    set brakes 0
} elseif {$semaphore == "yellow"} {
    if {$distance < $too_close} {
        set brakes 0
    } else {
        set brakes 1
    }
} else {
    set brakes 1
}

if {$brakes} {
    puts ">> APPLY BRAKES TO STOP VEHICLE"
} else {
    puts ">> CONTINUE AT GIVEN SPEED"
}
