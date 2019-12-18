
# Biến cục bộ (local)
# Biến cục bộ là một biến thông thường, được khai báo theo nguyên tắc khai báo biến.
# Phạm vi sử dụng của biến cục bộ phụ thuộc vào vị trí của biến khi khai báo. 
# Ví dụ:

localvar = "hello" # khai báo biến localvar và gán giá trị
def var_test
     localvar = 10 # khai báo biến localvar và gán giá trị
     puts localvar # in giá trị của localvar ra màn hình
end
var_test # gọi phương thức var_test
puts localvar #in giá trị của localvar ra màn hình

# ------
# Kết quả : 
# ==> 10
# ==> hello
# Như vậy ta thấy, mặc dù có cùng tên nhưng giá trị in ra là khác nhau, 
# vì biến localvar ở trong phương thức var_test không có liên quan gì với biến localvar ở ngoài phương thức. Mặc dù chúng có cùng tên biến.


color = "Red"
def method1
	color=192
	puts("color Value in method1:",color)
end

def method2
	color=255
	puts("color Value in method2:",color)
end

method1
method2
method1
puts("color Value in methods:"+color)

