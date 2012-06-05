module Parser2
	def self.a
		File.open("/home/rlabay/Desktop/exercise2.txt","r").each_line do |line|

			check_for_user = line.split(" ")

			check_for_user.each do |usr|
				if user = User.find_by_firstname("#{usr}")
					File.open("/home/rlabay/Desktop/user_tweets.txt","a") do |w|
				  	w.puts "Name: #{user.firstname} - Tweets: #{user.tweets.count} "
					end
				end	#end of if
			end #end of check_user
		end	#end of file open	
	end #end of a
end
