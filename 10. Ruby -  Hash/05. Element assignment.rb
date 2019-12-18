#làm việc với phần tử trong hash
h = {"a": 100, "b": 200}
h["a"] = 10			    # => h ⇒ {"a"=>10, "b"=>200} / nó sẽ thay thế giá trị trong hash nếu keys đã trùng
h["c"] = 300 			# => h ⇒ {"a"=>10, "b"=>200, "c"=> 300} / nếu chưa có giá trị thì nó sẽ thêm vào
h.store "d", 400		# => h ⇒ {"a"=>10, "b"=>200, "c"=> 300, "d"=>400}