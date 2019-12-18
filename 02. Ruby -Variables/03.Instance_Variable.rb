# Biến đối tượng (instance variable)
# Biến được bắt đầu bằng ký tự @ được gọi là “Biến Đối Tượng”,
# có nghĩa là nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối tượng của một lớp. 
# Ví dụ:
class Nguoi
 
    def initialize(ten)
      @ten = ten
    end
   
    def show
      puts @ten
    end
  end
   
first = Nguoi.new('Quoc')
first.show # Quoc
   
second = Nguoi.new('Minh')
second.show # Minh

# Ta thấy, biến được bắt đầu bằng ký tự @ chỉ sử dụng trong các phương thức của lớp, 
# và nó là dành riêng cho lớp.
