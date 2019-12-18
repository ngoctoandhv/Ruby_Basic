#1.While,Untul loops
#1. Loop - While (trong khi)========================================================================
i = 0
while i < 10  do
  puts("Inside the loop i = #{i}" )
  i +=1
end
#cach 2
i = 0
begin
  puts("Inside the loop i = #{i}" )
  i +=1
end while i < 10

#1. Loop - Until(cho den khi)======================================================================
i = 0
until i > 10  do
  puts("Inside the loop i = #{i}" )
  i +=1
end  #0 den 10
#cach 2
i = 0
begin
  puts("Inside the loop i = #{i}" )
  i +=1
end until i > 10

#2. The Ruby each iterator====================================================================
[123, 345, 678, 910].each{|item| p item*2}

#or
[123, 345, 678, 910].each do |item|
    p item*2
end

#3. For loop in Ruby==============================================================================
for i in 0..5
    puts "Value of local variable is #{i}"
  end
#or
(0..5).each do |i|
    puts "Value of local variable is #{i}"
end

#Break========== (thoát khỏi vòng lặp neu i lon hon 2)
for i in 0..5
    if i > 2 then
      break
    end
    puts "Value of local variable is #{i}"
  end

#Next=================(Bỏ qua cac gia tri be hon 2)
for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end

#Redo================================= (lam lai)===================
for i in 0..5
  if i < 2 then
    puts "Value of local variable is #{i}"
    sleep(1)    #dừng lại 1s rồi chạy tiếp
    redo
  end
end

#Retry=====================================================
begin
  do_something # exception raised
rescue
  # handles error
  retry  # restart from beginning
end
for i in 1..5
  retry if some_condition # restart from i == 1
end
#ex=========================
for i in 0..5
    begin
        p "Value is #{i}"
        sleep(1)
        raise if i>=2
    rescue
        retry
    end
end

#4. Select, map, inject===========================================================
# Select method==============
my_array = [1,2,3,4,5,6,7,8,100]
my_array.select{|item| p item%2==0 }
#ket qua : [2,4,6,8,100]
my_hash = {"Joe" => "male", "Jim" => "male", "Patty" => "female"}
my_hash.select{|name, gender| p gender == "male" }
#ketqua: {"Joe" => "male", "Jim" => "male"}

# Map method=================================
my_array = [1,2,3,4,5,6,7,8,100]
my_array.map{|item| item*2} #tạo thành mạng mới thỏa mãn điều kiện 

#@users = User.all
#@users.map{|user| user.email}

# Inject method
my_array = [1,2,3,4,5,6,7,8,100]
my_array.inject(0){|running_total, item| running_total + item} 
#running_total = 0 lay tu inject (0)
#biến iteam lấy các số trong mạng
#ketqua :136