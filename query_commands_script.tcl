# This script uses Query commands which takes user input, and then checks if that input is
# of particular data type, or if it is a command

proc whatever {switch input} {
	set validSwitches {"-int" "-float" "-digit" "-digit" "-alpha" "-alnum" "-command"}

	if {[llength [info level 0]] != 3} {
		puts "Error: Two arguments are required. User provided [info level 0]"
		return false
	}

	if {$switch ni $validSwitches} {
		puts "Error: Invalid switch. Supported switches are: $validSwitches"
		return false
	}

	switch $switch {
		"-int" {
			return [string is integer $input]
		}

		"-float" {
			return [string is a floating number $input]
		}

		"-digit" {
			return [string is digit $input]
		}

		"-alpha" {
			return [string is alpha $input]
		}

		"-alnum" {
			return [string is alnum $input]
		}

		"-command" {
			set command_name [info command $input]
			if {$command_name eq ""} {
				return false
			} else {
				return true
			}
		}
	}
}

put "To use this script, write the the function name (whatever is the function name), then give the value of switch(basically a type, int,float,alnum), followed by a value."
