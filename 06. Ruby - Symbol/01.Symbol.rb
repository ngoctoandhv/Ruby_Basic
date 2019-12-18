#1.introduction
#tên,định danh 
#ex : 
sym =:hello 
sym = "hello".to_sym 

#2 .khacs nhau giua string va symbol
#string :có thể  trích xuất giá trị phần tử ra còn symbol thì không
#symbol có hiệu năng truy xuất tốt hơn

#ex
#string
5.times def 
    puts "hello".object_id
end

#symbol
5.times def 
    puts :hello.object_id
end


#3.when should use Symbol
#được sử dụng trong Hash
 profile = {name : "toan", :age :18}         # {:name=>"eddie",:age=>18}
#
class Cat
    attr_accessor :name
end
kitty=Cat.new 
kitty.name = "dog"


