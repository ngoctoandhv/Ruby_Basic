#compact (!)  #loại bỏ value nill
h = { a: 1, b: false, c: nil }
h.compact     #=> { a: 1, b: false }
h             #=> { a: 1, b: false, c: nil }

#any?         #

#empty?       #xem hash có rỗng hay không
{}.empty?   #=> true

#include?

#length       #kiểm tra độ dài
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4
h.delete("a")   #=> 200
h.length        #=> 3

#size  #tương tự với length

#merge (!)      #Hợp nhất
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
h1.merge(h2){|key, oldval, newval| newval - oldval}
               #=> {"a"=>100, "b"=>54,  "c"=>300}
h1             #=> {"a"=>100, "b"=>200}

#has_key?
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

#has_value?

#select (!) lấy giá trị thỏa mãn điều kiện
h = { "a" => 100, "b" => 200, "c" => 300 }
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
h.select {|k,v| v < 200}  #=> {"a" => 100}

#reject (!) #trả về giá trị phụ định với yêu cầu trong block
h = { "a" => 100, "b" => 200, "c" => 300 }
h.reject {|k,v| k < "b"}  #=> {"b" => 200, "c" => 300}
h.reject {|k,v| v > 100}  #=> {"a" => 100}




#shift  #xóa cặp giá trị
h = { 1 => "a", 2 => "b", 3 => "c" }
h.shift   #=> [1, "a"]
h         #=> {2=>"b", 3=>"c"}




