set str "Make: Toyota Model: Land Cruiser Year: 1998"

#we can use direct indexes, hardcode it, but here we are using other string based commands
#inorder to build a familirazation with it 

set n1 [ string first "Model:" $str ]
set make [ string range $str 5 [ expr {$n1 - 1} ] ]

set n2 [ string first "Year:" $str ]
set model [ string range $str [ expr {$n1 + 7} ] [ expr {$n2 - 1} ] ]

set len [ string length $str ]
set year [ string range $str [ expr {$n2 + 6} ] [expr {$len - 1} ] ]

puts " Make:$make\n Model:$model\n Year:$year"

