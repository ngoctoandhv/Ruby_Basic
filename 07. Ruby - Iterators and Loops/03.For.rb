#Syntax
for variable [, variable ...] in expression [do]
  # write something here...
end
(expression).each do |variable[, variable...]|   
  # write something here... 
end

#=================================================================
#Example
for i in 0..5
  puts "Value of local variable is #{i}"
end
(0..5).each do |i|
  puts "Value of local variable is #{i}"
end

