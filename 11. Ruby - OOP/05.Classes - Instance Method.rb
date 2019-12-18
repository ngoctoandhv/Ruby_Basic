#3. Classes - Instance Method======================================================
    #The instance methods are also defined in the same way as we define any other method using def keyword and 
        #they can be used using a class instance only as shown below. 
    #Their functionality is not limited to access the instance variables,
        #but also they can do a lot more as per your requirement.

    #Các phương thức cá thể cũng được định nghĩa theo cùng một cách như chúng ta định nghĩa 
        #bất kỳ phương thức nào khác bằng cách sử dụng từ khóa def và chúng chỉ có thể được sử dụng bằng một thể hiện lớp như dưới đây.
    #Chức năng của chúng không bị giới hạn trong việc truy cập các biến thể hiện, 
        #nhưng chúng cũng có thể làm được nhiều hơn theo yêu cầu của bạn.
        
#!/usr/bin/ruby -w
# define a class
class Box
    # constructor method
    def initialize w, h
      @width, @height = w, h
    end
    
    # instance method
    def getArea
        n=5             #nên ghi hoa chữ đầu tiên or get_area
      @width * @height
    end
end
# create an object
box = Box.new 10, 20

# call instance methods
a = box.getArea 
puts "#{n}Area of the box is : #{a}"