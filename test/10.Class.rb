#====================Khaibao==========================================
class Nguoi             #nguoi la ten class,viet hoa chu dau tien
    attr_accessor :ten, :ho, :sothich, :website  #thêm thuộc tính vào class ,các thuộc tính bắt
                                                # đầu bằng dấu : 
end
ngoctoan = Nguoi.new    #đối tượng ngoctoan thuộc lớp người 
ngoctoan.ten = "toan"
ngoctoan.ho = "nguyen"
ngoctoan.sothich = "lap trinh"
ngoctoan.website = "google.com"

puts ngoctoan.ten     
puts ngoctoan.ho
puts ngoctoan.sothich   #in ra man hinh
puts ngoctoan.website 


#======or==================
class Dog
    attr_accessor :ten, :tuoi ,:mau
    def initialize(ten,tuoi,mau)
      @ten = ten
      @tuoi = tuoi
      @mau = mau
    end
end

convat = Dog.new("Meo","Hai","Den")
puts convat.ten


#===============================================================================
class Nguoi             #nguoi la ten class,viet hoa chu dau tien
    attr_accessor :ten, :ho, :sothich, :website, :nangluong  #thêm thuộc tính vào class ,các thuộc tính bắt đầu bằng dấu : 
    def initialize(ten,ho,sothich,website)
        @ten = ten
        @ho = ho
        @sothich = sothich
        @website = website
    end
    def thucday
        @nangluong=100   
    end
    def lamviec
        @nangluong=@nangluong - 5 
    end
    def an
        @nangluong=@nangluong + 5  
    end
    
end
#thừa kế 
class Giaovien < Nguoi
    attr_accessor :chuyennganh
end
# ngoctoan = Nguoi.new("toan","nguyen","lap trinh","http://google.com")   #đối tượng ngoctoan thuộc lớp người 
ngoctoan = Giaovien.new("toan","nguyen","lap trinh","http://google.com") 
ngoctoan.chuyennganh="code,Design"

puts ngoctoan.ten     
puts ngoctoan.ho
puts ngoctoan.sothich   #in ra man hinh
puts ngoctoan.website 
puts ngoctoan.chuyennganh

# puts ngoctoan.thucday
# puts ngoctoan.nangluong

# ngoctoan.lamviec
# puts ngoctoan.nangluong

# ngoctoan.an
# puts ngoctoan.nangluong

