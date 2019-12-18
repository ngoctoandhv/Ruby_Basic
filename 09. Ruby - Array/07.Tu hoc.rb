


#=====================================tu hoc============================================================
#khaibao
ar=[]

#them vao phan tu
ar.push(5)              #[5]
ar.push("Ruby")         #[5,"Ruby"]
ar << "hello"           #[5,"Ruby","hello"]
ar << [1,2]             #[5,"Ruby","hello",[1,2]]
ar +=[100]              #[5,"Ruby","hello",[1,2],100]

#xoa phan tu
ar.pop                   #[5,"Ruby","hello",[1,2]]  xoa phan tu cuoi cung
ar.pop                   #[5,"Ruby","hello"] 

#xac dinh bao nhieu phan tu
ar.size                 #3
ar.length

#tìm giá trị của mạng ở vị trí bao nhiêu
ar.index(5)             #0
ar.index("Ruby")        #1

#vị trí này thì có giá trị gì
ar[0]                   #5
ar[-1]                  #"hello" nó sẽ tính giá trị cuối cùng quay lại trước
ar.first                #5
ar.last                 #"Hello"

#=============================     Phan 2     =========================================================
mang=[5,10,20,30,40,50]
mang.unshift(2)         #[2,5,10,20,30,40,50]
mang[1]=10              #[2,10,10,20,30,40,50] thay đổi giá trị
mang[2]= nil            #[2,10,20,30,40,50] xóa giá trị
#====

mang_a=[1,2,3,[5,10],8,9]
mang_a.flatten          #[,,2,3,5,10,8,9]
mang_a.clear            #[]
#====

mang_a=[1,2,3,4]
mang_b=[4,5,6,7]
mang_a & mang_b        #[4]
#====

#sap xep================================
taphop=[2,4,3,7,8,9,10]
taphop.sorf                 #[2,3,4,7,8,9,10]
#or
taphop.sorf {|a,b| a<==>b}

taphop.sorf.reverse         #[10,9,8,7,4,3,2] 
#or
taphop.sorf {|a,b| b<==>a}

taphop.uniq #hợp những phần tử bằng nhau lại
#nếu thêm dấu ! ở sau cùng thì sẽ thay đổi luôn biến taphop

#so sanh voi 1 so ==========================
danhsach=[4,10,15,20]
danhsach.each do |ds|
    puts "gia tri cua vi tri nay la :#{ds}"
end
danhsach.all? { |ds| ds>5 }     #false
danhsach.any? { |ds| ds>5 }     #true ...chỉ cần một phần tử lớn hơn 5 là thỏa mãn
danhsach.select { |item| item > 10}     #[15,20] lấy phần tử lớn hơn 10
danhsach.reject { |item| item > 10}     #[4] nguoc lai

danhsach.map {|ds| ds+10}          #[14,20,25,30] moi gia tri +10




