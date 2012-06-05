module Parser

	def self.file_op
		File.open("/home/rlabay/Desktop/to_be_parsed.txt", "r").each_line do |line|
			user = line.strip.split('|')
			x = User.new(:firstname => user[0], :lastname => user[1], :sex => user[2],:age => user[3], 
			 								 :username => user[4], :email => user[5], :password => user[6], 
			 								 :password_confirmation => user[6])

		 	if !x.save
		 		puts x.errors.inspect
		 	end

		end
	end

end


