#"include" Modules: include is only add instance level methods - not class level methods

module Foo
  def foo_name
    puts "My name is Boo!!!"
  end
end

class Bar
  include Foo
end

Bar.new.foo_name 	#=> My name is Boo!!!

#"included"callback: “included” method callback that Ruby invokes whenever the module is included into another module/class
module Foo
    def self.included klass
      puts "Foo has been included
       in  class #{klass}"
    end
  end
  
  class Bar
    include Foo
  end
  
  #=> Foo has been included in  class Bar

  module Sample
    module ClassMethods
    end
  
    module InstanceMethods
    end
  
    def self.included receiver
      receiver.extend ClassMethods
      receiver.send :include, InstanceMethods
    end
  end

#"extend" Modules: extend method works similar to include, can use it to extend any object by including methods and constants from a module
module Foo
    def module_method
      puts "Module Method invoked"
    end
  end
  
  class Bar
    # extend Foo
  end
  
  bar = Bar.new
  bar.extend Foo
  bar.module_method  #=> Module Method invoked
  
#"extended" callbacks:

module Foo
  def self.extended base
    puts "Class #{base} has been extended with module #{self} !"
  end
end

class Bar
  extend Foo
end
#=> Class Bar has been extended with module Foo !
còn có cách gọi modul : prepend Module