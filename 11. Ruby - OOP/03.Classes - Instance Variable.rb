#3. Classes - Instance Variable=====================================================
#Các Instance Variable là loại thuộc tính của class và chúng trở thành thuộc tính của các đối 
    #tượng một khi các đối tượng được tạo bằng Class. 
#Mọi thuộc tính của đối tượng được gán riêng và không chia sẻ giá trị với các đối tượng khác. 
#Chúng được truy cập bằng toán tử  @ trong lớp nhưng để truy cập chúng bên ngoài lớp chúng 
    #ta sử dụng các phương thức công khai, được gọi là các phương thức truy cập.
#Nếu chúng ta lấy Hộp lớp được xác định ở trên thì @width và @height là các biến đối tượng cho class box.


class Box
    def initialize w, h
    # assign instance variables
    @width, @height = w, h
    end
end