#2. Creating hash
#Using new class method
h = Hash.new		  				# => {}

#Using the literal
h = Hash["a": 100, "b": 200]			# => puts h ⇒ {:a=>100, :b=>200}

h = Hash["obj1":1,"obj2":2]

#obj1 là key
#1 là giá trị