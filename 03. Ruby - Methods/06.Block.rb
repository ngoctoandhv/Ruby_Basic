1.upto(10){|x| puts x}

array= [1,2,3,4]
array.collect! do|n|
    n**2
    end 
puts array.inspect

class Array 
    def iterate!
        self.each_with_index do |n,i|
            self[i]= yield(n)
        end
    end
end
array= [1,2,3,4,5]
array.iterate! do|n|
    n**2
    end 
puts array.inspect

#============================================Tu hoc ========================================
def toan(&block)
    if block_given?  #kiem tra xem co block nao khong
        block.call   #neu co thi goi block 
        #yield      #dùng để  dữ chỗ.
    else
        puts "khong co block"
    end
end

toan {puts "day la mot block"}

#===============================
def toan (name)
    if block_given?  
        yield  name   
    else
        puts "khong co block"
    end
end

toan("ngoctoan"){|name| puts "xin chao #{name}"}

