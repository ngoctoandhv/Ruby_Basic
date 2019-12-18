#3. Classes - Initialize Method==============================================================
  # Phương thức khởi tạo là một phương thức lớp Ruby tiêu chuẩn và hoạt động gần giống như cách xây dựng hoạt động trong các ngôn ngữ lập trình hướng đối tượng khác. 
  # Phương thức khởi tạo rất hữu ích khi bạn muốn khởi tạo một số biến lớp tại thời điểm tạo đối tượng. 
  # Phương thức này có thể lấy danh sách các tham số và giống như bất kỳ phương thức ruby nào khác, 
  # nó sẽ được bắt đầu bằng từ khóa def như dưới đây

  class Box
    def initialize w,h  #or initialize (w,h)
    @width, @height = w, h
    end
end
b=Box.new(20,30) 