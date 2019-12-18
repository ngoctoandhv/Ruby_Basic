for i in "A".."C"
    retries = 2
    begin
      puts "Executing command #{i}"
      raise "Exception: #{i}"
    rescue Exception=>e
      puts "\tCaught: #{e}"
      if retries > 0
        puts "\tTrying #{retries} more times\n"
        retries -= 1
        sleep 2
        retry       #nằm trong khối rescue, nó sẽ ko cho "ensure" chạy mặc dù lỗi
      end
    end
  end

  
  