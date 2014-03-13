class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :posts

	#validates_presence_of :name, :email

	def user_info
		"name: #{name} \n"+
		"email: #{email}"
			
	end
end
