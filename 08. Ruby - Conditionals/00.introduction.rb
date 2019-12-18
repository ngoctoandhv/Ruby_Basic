#2. If statement===============================================================================
#Syntax

if conditional [then]
  # write something here...
[elsif conditional [then]
  # write something here...]
[else
  # write something here...]
end

If modifier syntax (short if)
[code goes here] if condition


#Example
#!/usr/bin/ruby
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!= 0
   puts "x is 1"
else
   puts "I can't guess the number"
end
#!/usr/bin/ruby
$debug = 1
print "debug\n" if $debug

#3. Unless=========================================================================================
#Syntax 
unless conditional [then]
  code
[else
  code]
end

Unless modifier syntax (short unless)
[code goes here] unless conditional

#Example
#!/usr/bin/ruby
x = 1 
unless x >= 2
  puts "x is less than 2"
else
  puts "x is greater than 2"
end
#!/usr/bin/ruby
$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var
