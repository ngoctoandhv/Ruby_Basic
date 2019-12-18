#1. Getting modular
    #là group chứa methods,constants,and class variable 
    #không khởi tạo,ko class con,đứng độc lập
module WarmUp
    def push_ups
        "Phew, I need a break!"
    end
end
    
class Gym
include WarmUp #dùng để gọi module module A
def a1; end
def a2; end
end

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


    
#=======================================
module A
end
module B
end
module C
end
module D
end
class Sample
  include C
  include D
  prepend A
  prepend B  
end
abc = Sample.new
Sample.ancestors #goi to tien #=>[B, A, Sample, D, C, Object, Kernel, BasicObject]