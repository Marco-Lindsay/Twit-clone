class User < ActiveRecord::Base
	has_many :posts

	validates_presence_of :name#, :email

	def user_info
		"name: #{name} \n"+
		"email: #{email}"
			
	end
end
