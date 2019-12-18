#The module Kernel has the eval() method and is used to execute code in a string

str = "Hello"
puts eval("str + ' Rubyist'") # => "Hello Rubyist"

#===========================================================================================
class Person
    def initialize(p1, p2)
      @geek, @country = p1, p2
    end
  end
  
  obj = Person.new("Matz", "USA")
  puts obj.instance_variable_get(:@geek) # => Matz
  puts obj.instance_variable_get(:@country) # => USA

#==============================================================================================
class Person
    def initialize(p1, p2)
      @geek, @country = p1, p2
    end
  end
  
  obj = Person.new("Matz", "USA")
  obj.instance_variable_set(:@country, "Japan")
  puts obj.inspect # => #<Rubyist:0x2ef8038 @country="Japan", @geek="Matz">

#=============================================================================================
Read more about: #class_variable_get, #class_variable_set, #const_get, #const_set, #class_variables