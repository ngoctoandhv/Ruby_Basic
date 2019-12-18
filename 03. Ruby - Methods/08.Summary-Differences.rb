

# Procs are objects, blocks are not
    #Procs là một đối tượng,blocks thì không

# At most one block can appear in an argument list
    # nhiều nhất một khối block xuất hiện trong danh sách đối số

#Lambdas check the number of arguments, while procs do not
    #Lambdas kiểm tra só lượng của đối số trong khi procs thì không

#Lambdas and procs treat the ‘return’ keyword differently
    #lambdas và procs 


#https://viblo.asia/p/phan-biet-block-proc-lambda-trong-ruby-mrDGMrDzezL

# Trước hết, theo mình hiểu thì Lambda chính là thuộc Class Proc. Sự khác biệt của Proc và Lambda với mình cũng còn khá mơ hồ nên mình xin phép đưa ra 2 sự khác biệt cơ bản mà mình tìm hiểu.
# Thứ nhất, Lambda thì check số lượng tham số truyền vào, còn Proc thì không check điều này
p = Proc.new { |x| puts x }
p.call(1, 2)
# return 1
l = lambda { |x| puts x }
l.call(1, 2)
# return Argument Error

#Cách xử lý từ khóa return là khác nhau giữa proc và lambda, cụ thể với return trong proc, hàm gọi bên ngoài cũng sẽ kết thúc ngay lập tức, trong khi đó lambda vẫn sẽ tiếp tục thưc hiện các câu lệnh tiếp theo của hàm gọi cho đến khi dừng hẳn.
def test
  l = lambda {return }
  l.call
  puts “This line can display”
end
test
# => This line can display
def test1
  p = Proc.new { return }
  p.call
  puts “This line can’t display”
end
test1
# => nil
