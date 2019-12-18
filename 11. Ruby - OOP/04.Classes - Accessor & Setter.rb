#3. Classes - Accessor & Setter================================================================
#To make the variables available from outside the class, they must be defined within accessor methods,
    #these accessor methods are also known as a getter methods. 
#Để làm cho các biến có sẵn từ bên ngoài lớp, chúng phải được định nghĩa trong các phương thức của trình truy cập,
    #các phương thức truy cập này còn được gọi là phương thức getter.
    
#!/usr/bin/ruby -w

# define a class
class Box
    # constructor method
    def initialize w,h
      @width, @height = w, h
    end
  
    # accessor methods
    def getWidth
      @width
    end
  
    def getHeight
      @height
    end
  
    # setter methods
    def setWidth= value
        @width = value
    end
    def setHeight= value
        @height = value
    end
end
   
   # create an object
   box = Box.new 10, 20
   
   # use setter methods
   box.setWidth = 30
   box.setHeight = 50
   
   # use accessor methods
   x = box.getWidth
   y = box.getHeight
   
   puts "Width of the box is : #{x}"
   puts "Height of the box is : #{y}"


#3. Classes - Accessor & Setter=================================
#!/usr/bin/ruby -w

# define a class
    class Box
        # constructor method
        def initialize w, h
        @width, @height = w, h
        end
    
        # accessor methods
        def printWidth
        @width
        end
    
        def printHeight
        @height
        end
    end

    # create an object
    box = Box.new 10, 20

    # use accessor methods
    x = box.printWidth
    y = box.printHeight

    puts "Width of the box is : #{x}"
    puts "Height of the box is : #{y}"

#3. Classes - Accessor & Setter (2)===========================================
#!/usr/bin/ruby -w

# define a class
class Box
    # constructor method
    def initialize w,h
      @width, @height = w, h
    end
  
    # accessor methods
    def getWidth
      @width
    end
  
    def getHeight
      @height
    end
  
    # setter methods
    def setWidth= value
      @width = value
    end

    def setHeight= value
        @height = value
     end
   end
   
   # create an object
   box = Box.new 10, 20
   
   # use setter methods
   box.setWidth = 30
   box.setHeight = 50
   
   # use accessor methods
   x = box.getWidth
   y = box.getHeight
   
   puts "Width of the box is : #{x}"
   puts "Height of the box is : #{y}"
