#The begin/rescue block is typically used on code in which you anticipate errors.
     #There's only one line here for us to worry about:
    a = 10
    b = "42"
    
    begin
      a + b
    rescue
      puts "Could not add variables a (#{a.class}) and b (#{b.class})"
    else
      puts "a + b is #{a + b}"
    End
    
    #=> Executing the revised code gets us error

#Let's feed this simple operation with an array of values of different types to see how the else clause comes into play:
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