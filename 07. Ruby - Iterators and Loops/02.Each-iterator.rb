#cú pháp

collection.each{|item| #something}

#or

collection.each do |item|
  # something
end

#ví dụ 
[123, 345, 678, 910].each{|item| item*2}

or

[123, 345, 678, 910].each do |item|
  item*2
end