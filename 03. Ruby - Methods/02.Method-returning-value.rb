#Methods return the value of the last statement executed
    #methods trả về giá trị của câu lệnh cuối cùng được thực thi
#An explicit return statement can also be used to return from function with a value, 
#prior to the end of the function declaration
    #Một câu lệnh trả về rõ ràng cũng có thể được sử dụng để trả về từ hàm có giá trị,
    # trước khi kết thúc khai báo hàm

def calculate_value(x,y)
    x / y
end
# calculate_value(3, 4)
def second_calculate_value(x,y)
    return x / y
# something
end
# calculate_value(3, 4)
def third_calculate_value(x,y)
    return x / y if y > 0
    0
end
# calculate_value(3, 0)
def method_call
    yield
end

method_call{2*3}
# method_call {2*3}

puts calculate_value(4, 4) #=>1
      
