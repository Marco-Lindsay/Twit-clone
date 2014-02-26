class User < ActiveRecord::Base
	has_many :posts

	def user_info
		"name: #{name} \n"+
		"email: #{email}"
			
	end
end
