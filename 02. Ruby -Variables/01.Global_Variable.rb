# Biến toàn cục (global)
# Khác với biến cục bộ, biến toàn cục được khai báo với tên bắt đầu bằng 
# ký tự $ và biến toàn cục có phạm vi sử dụng trong toàn bộ chương trình. Ví dụ:
# Khai báo biến toàn cục $global = “I am global varialble”

# Xét đoạn code ví dụ sau:

$localvar = "hello" # khai báo biến localvar và gán giá trị
def var_test{
     $localvar = 10 # khai báo biến localvar và gán giá trị
     puts $localvar # in giá trị của localvar ra màn hình
}
var_test # gọi phương thức var_test
puts $localvar #in giá trị của localvar ra màn hình

# ------
# Kết quả : 
# ==> 10
# ==> 10
# Ta thấy, khi giá trị của biến toàn cục thay đổi ở trong phương thức,
# thì sự thay đổi này ảnh hưởng ra tới bên ngoài phương thức.
# Như vậy, phạm vi của biến toàn cục là toàn bộ chương trình.


$global=0
class C
	puts "in a class:#{$global}"
	def my_method
		puts "in a method:#{$global}"
		$global=$global + 1
		$other_global=3
	end
end
C.new.my_method
puts"at top-level,$global:#{$global},$other_global:#{$other_global}"
