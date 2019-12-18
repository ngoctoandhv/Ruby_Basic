#======== in ra man hinh ================================================================
a = 10 #gan bien

puts "xin chao " #in ra man hinh

puts a #in bien a 

puts "gia tri cua bien a la #{a}" #in ra man hinh ---> gia tri cua bien a la 10


#======== in ra man hinh gia tri nhap tu ban phim =========================================
puts "Hay nhap gia tri cua bien b"

b = gets #nhap gia tri tu ban phim

puts "Gia tri cua bien b la #{b}"


#======== cau dieu kien if/else  =================================================================
a = 8
if a == 10
    puts "Bien a bang 10" 
elsif a==8
    puts "Bien a bang 8"
else
    puts "khong biet"
end


#========================Điều kiện and=======================================================
if a==0 and b==0
    puts " a và b đều bằng 0 "
end
#   Chúng ta viết hai câu điều kiện và dùng lệnh and ở giữa như sau
  
if A and B
    # xử lý khi thỏa mãn đồng thời 2 điều kiện A và B
end

#========================Điều kiện or==========================================================
# Về cách sử dụng or là như dưới đây.

if A or B
#   Phần xử lý khi chỉ cần 1 trong 2 điều kiện A hoặc B thỏa mãn
end
# Lệnh không được thực hiện khi ta dùng or này chỉ xảy ra khi cả hai điều kiện A và B sai


#====== rand ===================================================================================
rand (10)
puts rand
#Chúng ta có thể sử dụng lệnh rand như dưới đây để tạo nên một giá trị ngẫu nhiên từ [0] đến [9].




#====== so sanh ===============================================================================

# Đây là những vsi dụ chương trình sử dụng những dấu so sánh ngoài [==]

if a!=0
  # nếu a không bằng 0 thì sẽ thực hiện lệnh tiếp theo
end

if a > 0
  # nếu a có giá trị lớn hơn 0 thì thực hiện lệnh tiếp theo
end

if a <= 0
  # nếu a có giá trị nhỏ hơn hoặc bằng 0 thì thực hiện lệnh tiếp theo
end

# Chúng ta cũng có thể so sánh biến số với biến số

a=10
b=5
if a>b
  # nếu a lớn hơn b thực hiện lệnh tiếp theo
end

#============================Sử dụng times để ra lệnh lặp lại đơn giản==================================

# Khi bạn muốn lập đi lập lại n lần 1 thao tác xử lý thì chúng ta sẽ viết như sau.

n.times do
#   khu vực muốn xử lý lặp đi lặp lại
#   .....
#   .....
end

# Chúng ta hãy thử làm nên một chương trình mà từ "Slime đã xuất hiện" lặp lại 10 lần nhé!

10.times do
  puts "Slime đã xuất hiện"
  sleep 1
end

# Chúng ta cũng có thể dùng với những phép tính sử dụng biến số để lặp đi lặp lại. 
# Chương trình sau đây thực hiện phép tính cứ thêm 1 vào a.

a=0
10. times do
  a=a+1
  puts a
end
# ketqua : 1 2 3 4 5 6 7 8 9 10

# ============================Lặp lại sử dụng điều kiện while=====================================

while điều kiện
    # Những thao tác xử lý khi điều kiện thỏa mãn
    # ....
    # ....
end

# Đây là chương trình sử dụng lệnh [while]
  
a=0
while a<3
    puts a
    a += 1  # cũng giống như a=a+1
end
# [Kết quả hiển thị] 0 1 2

#vi du khac=============================
i=0
while i<10
  if i<5
    puts "#{i} nhỏ hơn 5"
  else
    puts "#{i} không nhỏ hơn 5"
  end
  i += 1
end
# [Kết quả hiển thị]
# 0 nhỏ hơn 5
# 1 nhỏ hơn 5
# 2 nhỏ hơn 5
# 3 nhỏ hơn 5
# 4 nhỏ hơn 5
# 5 không nhỏ hơn 5
# 6 không nhỏ hơn 5
# 7 không nhỏ hơn 5
# 8 không nhỏ hơn 5
# 9 không nhỏ hơn 5

#vi du so chan le ==========================
i=0
while i<10
  if i%2 == 0
    puts " #{i} là số chẵn"
  else
    puts " #{i} là số lẻ"
  end
  i += 1
end

# break de tam dung chuoi ======================
i=0
  while true
     puts i
     if i>4
       break
     end
     i +=1
 end
puts "bye"

 #hoac==========================
10.times do
    puts "Logo!"
    break
  end
  puts "Bye"
