class Array

    def iterate!(&code)
        self.each_with_index do |n,i|
            self[i] = code.call(n)
        end
    end
end


#=================================Tu hoc ===============================
m=[1,2,3]
n=[10,20,30]
def double_block(x)
    if block_given?
        yield x*2
    end
end

double_proc = Proc.new do |x,y|
    x*2
end

# double_lambda = lambada do |x,y|
#     x*2
# end


puts "mang m"
puts m.map(&double_proc)
# puts m.map{|arr| double_block(arr){|x| "#{x}"}}

puts "mang n"
puts n.map(&double_proc)
# puts n.map{|arr| double_block(arr){|x| "#{x}"}}

#sự khác nhau đầu tiên là ,
#khi thêm biến y vào thì đối với proc vẫn chạy bình thường và tương ứng vs y=nil
#khi thêm biến y vào thì đối với lambda sẽ báo lỗi 

#==================================================================================
def hello_p
    Proc.new {return "Procs!"}.call
    return "Method {hello_p}"
end

def hello_l
    lambda {return "lambda!"}.call
    return "Method {hello_l}"
end

puts hello_p
puts hello_l

#khac nhau thu 2
# khi gọi .call thì hàm procs sẽ dừng lại ở đó còn đối với lambla sẽ chạy hết đến return 

