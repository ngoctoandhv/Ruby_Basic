#6. Interating over array==============lặp lại mạng==================================================
#Array has each method, which includes from Enumerable module
arr = [1, 2, 3, 4, 5]
arr.each {|e| puts e}			# => print: 1 2 3 4 5

#Sometimes useful iterator is reverse_each which will iterate over the elements in the array in reverse order
arr = [1, 2, 3, 4, 5]
arr.reverse_each {|e| puts e}		# => print: 5 4 3 2 1

#The map method can be used to create a new array based on the original array
arr = [1, 2, 3, 4, 5]
arr.map {|a| 2 * a}   			# => [2, 4, 6, 8, 10]
arr                   				# => [1, 2, 3, 4, 5]
arr.map! {|a| a ** 2} 			# => [1, 4, 9, 16, 25]
arr                   				# => [1, 4, 9, 16, 25]