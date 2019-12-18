#1. Introduction

#2. Demonstration
        # a = 10
        # b = "42"
        # a + b

        # => The attempted arithmetic results in this error


values=[42,4,"a","r",9,5,"sharon","Libya",{:dog=>'cat'}].shuffle  #dùng để đảo các vị trí

while values.length>0
    a=values.pop #lấy giá trị cuối cùng của mạng gán vào a
    b=values.pop
    begin
        a + b
    rescue 
        puts "could not add variable a(#{a.class}) and b(#{b.class})"
    else 
        puts "a+b is #{a+b}"
    end
end