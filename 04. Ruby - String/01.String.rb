

#==============================================tu hoc ===========================================
puts %*xin chao "Ban"*
# ket qua: xin chao "Ban"

c="Ngoc Toan"
puts %*xin chao "Ban":#{c}*
#ketqua : xin chao "Ban":Ngoc Toan

#kiem tra chuoi rong hay ko
s=""
s.empty? 
# ket qua : true

# gan chuoi 
a="nguyen"
b="toan"
a << b
puts "#{a}"
#ket qua : nguyentoan

#===========thay doi kieu chu ====================
c="xin chao"
puts c.upcase #XIN CHAO
puts c.downcase #xin chao
puts c.capitalize #Xin chao
puts c.swapcase #doi chu hoa thanh thuong,thuong thanh hoa
puts c.reverse #oahc nix

puts c.upcase! #gan luon bien c="XIN CHAO" nho vao dao !

#======độ dài chuỗi ,tìm kiếm thành phần trong chuỗi =======================
n="xin chao cac ban"
puts n.length
puts n.size

#==================================================================================
c.include?("xin") #true : phân biệt in hoa in thường nhé.
c.sub("cac ban","moi nguoi") #tìm thấy "cac ban" thì thay thế bằng "moi nguoi", thay thế từ đầu tiên mà nó tìm thấy
c.sub!(/./){|c| c.ord.to_s} # thay thế chữ đầu tiên thành mã , ! để thay đổi luôn chuỗi c
c.gsub("e","*") #thay thế các ký tự e thành *, thay thế tất cả 
c.gsub(/[oe]/,o=>8,e=>9) #tìm ra rồi thay thế o thành 8, e thành 9

#========================================================================================
c.split (" ") #tách chuỗi ra giữu các dấu cách : ["xin" ,"chao" ,"cac"" ,"ban"  ]
c.split(/ /)  #tách ra mạng có cả dấu " "
c.split(' ')
c.split(" ",4) #cắt thành 4 khúc 
c.split(" ",-1)  #cắt hết ,nhưng phần tử trong mạng cuối cùng là ""

#strip : bỏ những ký tự dư ở hai đầu, nhưng ký tự " " trong chuỗi thì ko bỏ 
c="/n  the   men /n"
c.strip # "the    men"

c[1] #chao

#==============================================================================
c.count("a") #đếm số chữ a trong chuỗi

#viet chuoi dai
chuoidai = <<A 
xin chao
cac ban
toi la
toan
A
# #ketqua : xin chao
#           cac ban
#           toi la
#           toan




