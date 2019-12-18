#1. Loop - While
    #Syntax
        # while conditional [do]
        #     # write something here...
        #   end
        
        # #or
        
        # begin
        #     # write something here...
        # end while conditional

#Example

i = 0
while i < 10  do
  puts("Inside the loop i = #{i}" )
  i +=1
end

#or

i = 0
begin
  puts("Inside the loop i = #{i}" )
  i +=1
end while i < 10

#ketqua 
    # Inside the loop i = 0
    # Inside the loop i = 1
    # Inside the loop i = 2
    # Inside the loop i = 3
    # Inside the loop i = 4
    # Inside the loop i = 5
    # Inside the loop i = 6
    # Inside the loop i = 7
    # Inside the loop i = 8
    # Inside the loop i = 9