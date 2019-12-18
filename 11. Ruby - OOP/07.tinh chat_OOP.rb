#"Sự lo lắng xua tan nỗi buồn của ngày mai mà đang xua đi hạnh phúc của hôm nay"
                                    #Corrie ten Boom

#4. Abstraction=============Tính trừu tượng =============================
    #cố gắng mô tả đối tượng
    #In object design we need to define the characteristics of each object and design how they interact with each other.
    #=>  Objects finish work internally, report or change its state and communicate with other objects without knowing how the object proceeds..

#5. Inheritance==============Kế thừa=====================================
class Animal
    def speak
      "Hello!"
    end
  end
  
  class GoodDog < Animal
  end
  
  class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!

#5. Inheritance (2)===========================================================
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize n
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new "Sparky"
paws = Cat.new

puts sparky.speak           # => Sparky says arf!
puts paws.speak             # => Hello!


#6.Encapsulation ====================== tính bao đóng =========================
  #kieu private======
  class GoodDog
    DOG_YEARS = 7 

    attr_accessor :name, :age

    def initialize n, a
      self.name = n
      self.age = a
    end

    private

    def human_years
      age * DOG_YEARS
    end
  end

  sparky = GoodDog.new "Sparky", 4
  sparky.human_years #lỗi ko truy xuất được

  #muốn in ra thì ta phải tạo 
  def abc
    human_years
  end
  #rồi gọi abc ra

#kieu   protected=========
  class Animal
    def a_public_method
      "Will this work? " + self.a_protected_method
    end

    protected

    def a_protected_method
      "Yes, I'm protected!"
    end
  End

  fido = Animal.new
  fido.a_public_method        # => Will this work? Yes, I'm protected!

  fido.a_protected_method
  # => NoMethodError: protected method `a_protected_method' called for
  #<Animal:0x007fb174157110>


#public 
#private
#protected


  #instance
  #class

  
#7. Polymorphism=================đa hình ====================
#kế thừa được nhiều lớp nhiều tầng
#!/usr/bin/ruby -w

# define a class
class Box
  # constructor method
  def initialize w,h
    @width, @height = w, h
  End

  # instance method
  def getArea
    @width * @height
  end
end
# define a subclass
class BigBox < Box
  # change existing getArea method as follows
  def getArea
    @area = @width * @height
    puts "Big box area is : #@area"
  end
end

# create an object
box = BigBox.new 10, 20

# print the area using overriden method.
box.getArea


   