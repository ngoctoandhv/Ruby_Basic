#Items can be added to the end of an array by using either push or << 
arr = [1, 2, 3, 4]
arr.push 5  		            # => [1, 2, 3, 4, 5]
> arr << 6 << 7 << 8        	# => [1, 2, 3, 4, 5, 6, 7, 8]

> a1 = [1]; a2 = [2, 3]; a3 = [4, 5, [6, 7]]
> a = a1 << a2 << a3	        # => [1, [2, 3], [4, 5, [6, 7]]]
> a[1] 			                # => [2, 3]
> a[1][0]			            # => 2
> a[2][2][0]		            # => 6
> a.flatten 		            # => [1, 2, 3, 4, 5, 6, 7] #là phẳng ,chuyển hết về một mạng 

#===================================================================================================
arr=[1, 2, 3, 4, 5, 6]
#unshift will add new items to the beginning of an array
arr.unshift -1, 0 		   	 # => [-1, 0, 1, 2, 3, 4, 5, 6] / thêm -1 vào đầu tiên

#With insert you can add a new element to an array at any position
arr.insert 3, "apple"		# => [0, 1, 2, 'apple', 3, 4, 5, 6] / thêm index 3 bằng từ "apple"


#The method pop removes the last element in an array and returns it
arr =  [1, 2, 3, 4, 5, 6]
arr.pop                     # => 6  / loại bỏ phần tử cuối cùng và trả về giá trị đó
arr                         # => [1, 2, 3, 4, 5]

#To retrieve and at the same time remove the first item, use shift
arr.shift 	   	     		# => 1 / loại bỏ phần tử đầu tiên và trả về giá trí đó
arr 		  	     		# => [2, 3, 4, 5]


#To delete an element at a particular index
arr.delete_at(2)  	    		# => 4  / xóa phần tử index 2 ,và trả về giá trị đó
arr 			    		# => [2, 3, 5]
