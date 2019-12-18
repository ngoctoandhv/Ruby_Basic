#định nghĩa
# Way 1
class Foo
    def self.bar
      puts 'class method'
    end
  end
  
  Foo.bar # "class method"
  
# Way 2
class Foo
class << self
    def bar
    puts 'class method'
    end
end
end

Foo.bar # "class method"

# Way 3
class Foo; end
def Foo.bar
puts 'class method'
end

Foo.bar # "class method"

#============================================================
#Class method dùng cho bất kì hành động nào mà không xử lí các thể hiện của một lớp. 
#ActiveRecord::Base # find là một ví dụ

module ActiveRecord
  class Base
    # some stuff
    class << self
      def find(...)
        # blah
      end
    end
  end
end
#Một số cách sử dụng khác cuả class method trong rails là xác nhận hợp lệ và các liên kết trong ActiveRecord.

module ActiveRecord
  class Base
    def self.validates_presence_of(...)
      # make sure present
    end
  end
end

class Foo < ActiveRecord::Base
  validates_presence_of :bar
end
#Khi bạn gọi validates_presence_of thì class method trong AR::Base là hàm được gọi.