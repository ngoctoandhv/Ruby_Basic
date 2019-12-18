class AwesomeAcademyClass

	attr_accessor :name, :course

	def information
		puts "Hello guys!"
		printf "Welcome to our class,this is"
		printf "#{name}"+" to learn #{course}\n"
	end
end

aa_class=AwesomeAcademyClass.new
aa_class.name = "P109"
aa_class.course= "Ruby"
puts aa_class.name
aa_class.information

