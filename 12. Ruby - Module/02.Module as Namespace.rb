module Perimeter
    class Array
      def initialize
        @size = 400
      end
    end
end
  
  our_array = Perimeter::Array.new
  ruby_array = Array.new
  
  p our_array.class	         #=> Perimeter::Array
  p ruby_array.class	#=> Array

#==================================================================================
module Gym
    class Push
      def up
        puts 40
      end
    end
end
  require "gym"

  gym_push = Gym::Push.new
  p gym_push.up    #=> 40

#===========================================================================================
module Dojo
    A = 4
    module Kata
        B = 8
      module Roulette
        class ScopeIn
          def push
            15
          end
        enda
      end
    end
  end
  
  A = 16
  B = 23
  C = 42
puts "A - #{A}"		#=> A - 16
puts "Dojo::A - #{Dojo::A}"	#=> Dojo::A - 4

puts "B - #{B}"		#=> B - 23
puts "Dojo::Kata::B - #{Dojo::Kata::B}"   #=> Dojo::Kata::B - 8

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"
#=> :: operator: constant lookup

