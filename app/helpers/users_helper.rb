module UsersHelper
	def short_name user
		truncate user.name, length: 100
		
	end
end
