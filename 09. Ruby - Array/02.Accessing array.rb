#Using the :[] method:
arr = [1, 2, 3, 4, 5, 6]
arr[2]                  # => 3
arr[100]   	            # => nil
arr[-3]     	        # => 4
arr[2, 3] 		        # => [3, 4, 5]
arr[0, 0] 		        # => []
arr[1..4] 		        # => [2, 3, 4, 5]
arr[1..-3] 	            # => [2, 3, 4]

#Using other methods
arr = [1, 2, 3, 4, 5, 6]
arr.at 0               # => 1 /phần tử đầu tiên
arr.first              # => 1
arr.last               # => 6
arr.take 3             # => [1, 2, 3]
