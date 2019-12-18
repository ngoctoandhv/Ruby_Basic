#là kỹ thuật trong ruby để nạp tên của methods thành tên của đối số

class Rubyist
  def welcome(*args)
    "Welcome " + args.join(" ")
  end
end
obj = Rubyist.new

puts(obj.send(:welcome, "famous", "Rubyists")) # => Welcome famous Rubyists

#or 
obj.welcome("famous", "Rubyists")




#3. Metaprogramming advance

str = "Hello"
puts eval("str + ' Rubyist'") # => "Hello Rubyist"
P “#{str} Rubyist”
