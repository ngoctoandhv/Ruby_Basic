arr=[1,2,3,4,5,6,nil]

#Compact : bỏ phần tử nil
arr.compact     #=> [1, 2, 3, 4, 5, 6]

# Concat : copy tao mạng khác
a=arr.concat    #=> a = [1, 2, 3, 4, 5, 6]

# Index	 :

# Count : đếm số phần tử trong mạng
arr.count        #=> 7

# Sample  random lấy một phần tử ngẫu nhiên trong mạng

# Select : chọn ra phần tử theo yêu cầu của mình 
arr.select { |a| a > 3 }     #=> [4, 5, 6]

# Shuffle : sáo trộn thứ tự

# Uniq : đưa ra mạng mới,bỏ đi các phần tử cũ
