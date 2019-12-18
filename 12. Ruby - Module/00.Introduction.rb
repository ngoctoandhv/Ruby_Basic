#1.Getting modular
    #A module is a named group of methods, constants, and class variables
    #Modules only hold behaviour
    #A class object is an instance of the Class class, a module object is an instance of the Module class
        #=> "All classes are modules, but not all modules are classes"
    #Using module keyword to define a modules
    #A modules can’t be instantiated, can't be subclassed, no "module hierarchy" of inheritance
        #=> Ruby modules allow create groups of methods that can then include or mix into any number of classes
    
#ex
module WarmUp
    def push_ups
      "Phew, I need a break!"
    end
end
  
  class Gym
    include WarmUp
  
    def preacher_curls
      "I'm building my biceps."
    end
  end
  class Dojo
    include WarmUp
  
    def tai_kyo_kyu
      "Look at my stance!"
    end
  end
  
  puts Gym.new.push_ups   #=> Phew, I need a break!
  puts Dojo.new.push_ups  #=> Phew, I need a break!

#All classes are instances of Ruby’s Class, all modules in Ruby are instances of Module
#Module is the superclass of Class

module WarmUp
end

puts WarmUp.class       # Module
puts Class.superclass   # Module
puts Module.superclass  # Object
    

http://ruby-doc.org/
http://rubylearning.com/satishtalim/modules_mixins.html
https://learnrubythehardway.org/book/ex40.html
http://www.rubyfleebie.com/an-introduction-to-modules-part-1/
http://www.rubyfleebie.com/an-introduction-to-modules-part-2/