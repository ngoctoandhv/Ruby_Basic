
#8. Other methods
compact (!) #bỏ key có phần tử là nil
any?        #
empty?
include?
length
merge (!) #thêm key vs value vào 
has_key?
reject (!)
size
shift
has_value?
select (!)
...

#=====================================Tu hoc=======================================================

h={"name"=>"ngoc toan"}
h["email"]="ngoctoan@gmail.com"
puts h              #{"name"=>"ngoc toan", "email"=>"ngoctoan@gmail.com"}
puts h.keys         #["name", "email"]
puts h.values       #["ngoc toan", "ngoctoan@gmail.com"]
puts h["name"]      #["ngoc toan"]
puts h["abc"]      #["nil"]
puts h.key("ngoc toan") #["name"] muốn biest values lưu trong khóa nào

puts h.has_key?("name") #true  kiểm tra khóa có trong hashes hay không
puts h.has_value?("ngoc toan") #kiểm tra gia tri có trong hashes hay không
#================================================================================
h.each do |key , value|
    puts "khoa : #{key} - gia tri #{value}"
end
#viet tat 
h.each {|key , value| puts "khoa : #{key} - gia tri #{value}"}
h.each_key {|key| puts "khoa : #{key} "}  
h.each_value {|value| puts "gia tri: #{value} "}  
#==================================================================================
#trả về giá trị h mới với điều kiện chúng ta đưa vào là đúng
puts h.select {|key,value| key.size > 4} #{"email"=>"ngoctoan@gmail.com"}
puts h.reject {|key,value| key.size > 4} #nguoc lai vowi select

puts h.find {|key,value| key.size > 3} # ["name","ngoc toan"] tạo thành mạng,và nó chỉ đưa ra giá trị nó thấy đầu tiên
puts h.find_all {|key,value| key.size > 3} #tra ve het,mỗi cặp khóa-giá trị thành một mạng con trong 1 mạng lớn

#===========================================================================
puts h.all? {|key,value| key.size > 4} #false vì nó kiểm tra tất cả các phần tử thõa mãn thì mới ra true
puts h.any? {|key,value| key.size > 4} #true vì chỉ cần một phần tử thõa mãn điều kiện là được

#=================================================================================
puts h.map {|key,value| key = "#{key}a"}    #them chu a vao sau key 
