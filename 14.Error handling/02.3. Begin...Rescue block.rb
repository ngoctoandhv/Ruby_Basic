# This is the most basic error handling technique.
#     It starts off with the keyword begin and acts in similar fashion to an if statement in that it your program flows to an alternate branch if an error is encountered.
# The main idea is to wrap any part of the program that could fail in this block.Commands that work with outside input, 
#     such as downloading a webpage or making calculation something based from user input, 
#     are points of failure. Something like puts "hello world" or 1 + 1 is not.

#dịch :Đây là kỹ thuật xử lý lỗi cơ bản nhất. 
    # Nó bắt đầu với từ khóa bắt đầu và hoạt động theo cách tương tự như một câu lệnh if trong đó chương trình của bạn chảy đến một nhánh thay thế nếu gặp phải lỗi.
    # Ý tưởng chính là bọc bất kỳ phần nào của chương trình có thể thất bại trong khối này. 
    # Các lệnh hoạt động với đầu vào bên ngoài, 
    # chẳng hạn như tải xuống trang web hoặc tính toán một cái gì đó dựa trên đầu vào của người dùng, 
    # là những điểm không thành công. Một cái gì đó như đặt "hello world" hoặc 1 + 1 thì không.

    require "open-uri"
    require "timeout"
    
    remote_base_url = "http://en.wikipedia.org/wiki"
    
    start_year = 1900
    end_year = 2000

    (start_year..end_year).each do |yr|
        begin
          rpage = open("#{remote_base_url}/#{yr}")
        rescue StandardError=>e
          puts "Error: #{e}"
        else
          rdata = rpage.read
        ensure
          puts "sleeping"
          sleep 5
        end
       
        if rdata
          File.open("copy-of-#{yr}.html", "w"){|f| f.write(rdata)}
        end
       end


#begin: This starts off the exception-handling block. Put in the operation(s) that is at risk of failing in this clause. In the above example, the open method for retrieving the webpage will throw an exception if the website is down.
#rescue StandardError=>e: This is the branch that executes if an exception or error is raised. Possible exceptions include: the website is down, or that it times out during a request. The rescue clause includes the code we want to execute in the event of an error or exception (there's a difference between the Ruby Exception and Error classes, which I will get to in a later revision).
#else: If all goes well, this is where the program branches to. In this example, we save the contents of the open method to a variable.
#ensure: lỗi vẫn chạy