# Biến lớp (class variable)

# Để định nghĩa biến thuộc class, chúng ta sử dụng ký tự @@ trước tên biến.
# Khác với instance variable, class variable sẽ được dùng chung cho tất cả các đối tượng của lớp đó.

class Dog
 
  def initialize(leg)
    @@leg = leg
  end
 
  def show_leg
    puts @@leg
  end
 
end
 
first = Dog.new(4)
first.show_leg # 4
 
second = Dog.new(10)
second.show_leg # 10
 
first.show_leg # 10

# Như ví dụ trên ta thấy biến @@leg đã bị thay đổi sau khi đối tượng second được tạo.