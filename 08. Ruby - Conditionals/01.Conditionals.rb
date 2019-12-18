#Câu điều kiện
# x = 0
# if x > 2
#    puts "x is greater than 2"
# elsif x <= 2 and x!= 0
#    puts "x is 1"
# else
#    puts "I can't guess the number"
# end

# x = 1 
# unless x >= 2
#   puts "x is less than 2"
# else
#   puts "x is greater than 2"
# end

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var

#4. Case when
$age =  5
case $age
when 0 .. 2
  puts "baby"
when 3 .. 6
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else
  puts "adult"
end

#======================================Tu hoc ============================
# && va
# || hoac

#bai toan
#x co 2 khoang gia tri 
#1)x bao gom cac gia tri tu 10 den 25
#2)x bao gom cac gia tri nho hon -50
#Hoi : trong tap hop (11,-30,100,70,-100) hay tim x thoa man dieu kien

A=[11,-30,100,70,-100]
A.select do |x|
    if (x >= 10 && x <= 25) || x<-50
    puts "x=#{x} thoa man yeu cau de bai"
    else
    puts "x=#{x} khong thoa man yeu cau de bai"
    end
end

#===================================================================================
#case....when
# 0..4 có nghĩa là khoảng giá trị từ 0 đến 4

n=4
case n
when 0..4
    puts "gia tri cuar 0<n<4"
when 5
    puts "gia tri cua n=5"
when n==10
    puts "gia tri cua n=10"
else
    puts "khong biet"
end

#unless 
# thêm dấu ! phía trước để phụ định ngược lại

e=100
puts "e=100" if e==100      #dung thi in ra ,xai thi khong in gi ca