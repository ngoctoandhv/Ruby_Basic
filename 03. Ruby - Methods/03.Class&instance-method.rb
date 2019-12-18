#Class method là method mà được gọi trên một lớp, 
#còn instance method là method mà được gọi trên thể hiện của một lớp. 

#ex
class Foo
    def self.bar            #thường có self thì là class method
      puts 'class method'
    end
    
    def baz
      puts 'instance method'
    end
end
  
Foo.bar # => "class method"
Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => instance method
Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>

#Qua ví dụ đơn giản trên, ta thấy sự khác biệt giữa 2 phương thức bar và baz. 
    #bar là một class method nên khi ta gọi Foo.bar thì nó hoạt động tốt 
    #nhưng baz lại là một instance method dó đó khi ta gọi Foo.baz 
    #thì lập tức ruby sẽ bắn ra một exception là NoMethodError.

#Tiếp theo ta sẽ gọi hai method trên trên một thể hiện của lớp (Foo.new) 
    #thì ta sẽ thấy kết quả ngược lại với khi ta gọi chúng ngay trên lớp đó.