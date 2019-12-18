#Metaprogramming basic 
#“Metaprogramming is a programming technique in which computer programs have the ability to treat programs as their data” https://en.wikipedia.org/wiki/Metaprogramming
    # Example code without metaprogramming


#send( ) is an instance method of the Object class
class Rubyist
    def welcome(*args)
      "Welcome " + args.join(" ")
    end
  end
  obj = Rubyist.new
  puts(obj.send(:welcome, "famous", "Rubyists")) # => Welcome famous Rubyists

#=======================================================================================
  class Rubyist
  end
  
  rubyist = Rubyist.new
  
  if rubyist.respond_to?(:also_railist)
    puts rubyist.send(:also_railist)
  else
    puts "No such information available"
  end

#============================================================================================
class Rubyist
    private
  
    def say_hello name
      "#{name} rocks!!"
    end
  end
  
  obj = Rubyist.new
  puts obj.send(:say_hello, "Matz")

#=============================================================================================
#The Module#define_method( ) is a private instance method of the class Module

class A
    define_method(:wilma) {puts "Touch me!!!"}
  end
  
  class B < A
    define_method(:barney) {puts "Call me!!!"}
  end
  
  b = B.new
  b.barney => "Call me!!!" 
  b.wilma => "Touch me!!!"

#================================================================================================
#Kernel#method_missing( ) responds by raising a NoMethodError

class Caller
    def method_missing(m, *args, &block)
      puts "Called #{m} with #{args.inspect} and #{block}"
    end
  end
  
  Caller.new.anything 
  # => Called anything with [ ] and
  
  Caller.new.anything(3, 4) {something} 
  # => Called anything with [3, 4] and #<Proc:0x02efd664@tmp2.rb:7>



