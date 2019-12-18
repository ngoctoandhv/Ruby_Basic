#3. Classes - Class Method
    # A class method is defined using def self.methodname(), 
    # which ends with end delimiter and would be called using the class name as classname.
    # methodname as shown in the following example

    #Một Class method được định nghĩa bằng cách sử dụng tên def self.method (), 
    #kết thúc bằng dấu phân cách kết thúc và sẽ được gọi bằng tên lớp là classname.
    #methodname như trong ví dụ sau

    #!/usr/bin/ruby -w

class Box
    # Initialize our class variables
    @@count = 0
    def initialize w, h
      # assign instance avriables
      @width, @height = w, h
  
      @@count += 1
    end

  #Class Method
    def self.printCount
      puts "Box count is : #@@count"
    end
end

  # create two object
box1 = Box.new 10, 20
box2 = Box.new 30, 100

# call class method to print box count
Box.printCount      # => 2
