def calculate_value(x,y)
    x + y
end
  
def calculate_value(value='default', arr=[])
    puts value
    puts arr.sum
end
  
  
  
def calculate_value(x,y,*otherValues)
    puts otherValues
end
  
def accepts_hash(arguments)
    # print out what it received
    print "got: ", arguments.inspect
end
  
# Ruby 2.0 
def calculate_value(a, b, c: true, d: false) 
     puts  a, b, c, d
end  