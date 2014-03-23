class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :posts,  dependent: :destroy
	# has_many :watcher_relationships, class_name: "Relationship", foreign_key: "watched_id"
	# has_many :watched_relationships, class_name: "Relationship", foreign_key: "watcher_id"
	# has_many :watchers, through: :watcher_relationships
	# has_many :watcheds, through: :watched_relationships
	

	validates_presence_of :name, :email

	def user_info
		"name: #{name} \n"+
		"email: #{email}"
			
	end
end
