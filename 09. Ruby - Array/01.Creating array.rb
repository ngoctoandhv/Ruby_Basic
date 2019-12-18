#Using the literal constructor []
arr = [1, "two", 3.0]       				# => [1, "two", 3.0]
#Using class method
arr = Array.new            				# => []
Array.new [8, 9]				    	# => [8, 9]
Array.new 3                				# => [nil, nil, nil]
Array.new 3, true        				# => [true, true, true]
Array.new 3, "hello"					# => ["hello", "hello", "hello"]
#Other
animals = %w(monkey dog cat) 		# => ["monkey", "dog", "cat"]
# %i để tạo mạng kiểu symbol
