#We will be working on a menu design for a restaraunt.
#Calculatint their total income, costs, etc.

#We can do this, where price and sales can be referred independently.
#This will make things act like a multi dimensional array.

#=====Menu=====
set menu(pizza,price) 10.99
set menu(burger,price) 8.99
set menu(salad,price) 7.99
set menu(pasta,price) 9.99
set menu(sandwich,price) 9.99
set menu(chicken,price) 6.99

#=====Sales=====
set menu(pizza,sales) 73
set menu(burger,sales) 100
set menu(salad,sales) 55
set menu(pasta,sales) 82
set menu(sandwich,sales) 90
set menu(chicken,sales) 129


#another way to do this could be to make a sublist inside an array.
#we will need to run two loops, one will go through the dishes,
#second loop will go through sales and prices. This implementation will be mentioned towards the end

#=====Income=====

set dishes [list pizza burger salad pasta sandwich chicken]
set total_income 0
puts "----------------------------"
puts "Income for each dish"
foreach dish $dishes {

	#every iteration price and amount will be updated with the value of that particular value.
	#the value from the 2D trick array we defined earlier
	
	set price $menu($dish,price)
	set amount $menu($dish,sales)
	set income [ expr $price * $amount]
	set menu($dish,income) $income
	puts "Income for $dish = $amount"
	set total_income [expr $total_income + $income]
}
puts "Total income = $total_income"
puts "----------------------------"

#======Costs=====
set menu(pizza,cost) 7.54
set menu(burger,cost) 4.45
set menu(salad,cost) 2.15
set menu(pasta,cost) 5.35
set menu(sandwich,cost) 5.65
set menu(chicken,cost) 2.40

puts "Revenue and gross profit margins"
set total_costs 0

foreach dish $dishes {
	
	set cost [expr $menu($dish,sales) * $menu($dish,cost)]
	set total_costs [expr $total_costs + $cost]
	set revenue [expr $menu($dish,income) - $cost]
	set menu($dish,revenue) $revenue
	puts "Revenue for $dish = $revenue"
}

set total_revenue [expr $total_income - $total_costs]
set gpm [expr ($total_income - $total_costs)/$total_income * 100]
puts "-----------------------------"
puts "Business total revenue = $total_revenue"
puts "Business Gross Profit Margin = [expr round($gpm)]"

#Another approach to menu creation maybe. We can also add another element, make it cost.
#array set menu {
#	pizza {10.99 50}
#	burger {8.99 100}
#	salad {7.99 55}
#	pasta {9.99 82}
#	sandwih {9.99 90}
#	chicken {6.99 120}
#	}
#
#	foreach dish [array names menu] {
#		foreach {price sales} $menu($dish) {
#			set income [expr {$price * sales}]
#			puts "$dish : $sales sold @ $price = $income"
#		}
#	}

