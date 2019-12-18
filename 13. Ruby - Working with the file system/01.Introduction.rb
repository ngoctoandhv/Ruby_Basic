#1.What is file?==========================================================



#2. Creating file==========================================================

irb :001 > my_file = File.new("simple_file.txt", "w+")
 => #<File:simple_file.txt>
irb :002 > my_file.close



#3. Opening file=================================================================
# Spits out entire contents of the file.
File.read("file_name") 
# Reads the entire file based on individual lines and returns those lines in an array.
File.readlines("file_name")

#And open file to writing
irb :001 >  sample = File.open("simple_file.txt",  "w+")
 => #<File:simple_file.txt>
irb :002 > sample.puts("another example of writing to a file.")
 => nil
irb :003 > sample.close
 => nil
irb :004 > File.read("simple_file.txt")
 => "another example of writing to a file.\n"



 #4. Deleting file====================================================================
 irb :001 > File.new("dummy_file.txt", "w+")
 => #<File:dummy_file.txt>
irb :002 > File.delete("dummy_file.txt")
 => 1

 #5. Appending to a file===============================================================
 10.times do 
    sleep 1
    puts "Record saved ..."
    File.open("server.log", "a") {|f| f.puts "Server started ar: #{Time.new}"}
  end
  
  Result =>
  ➜  ~ cat server.log                
  Server started ar: 2017-11-09 16:42:34 +0700
  Server started ar: 2017-11-09 16:42:35 +0700
  Server started ar: 2017-11-09 16:42:36 +0700
  ...
  Server started ar: 2017-11-09 16:42:43 +0700


http://ruby-doc.org/
https://launchschool.com/books/ruby/read/files
