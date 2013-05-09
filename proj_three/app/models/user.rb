class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body

  def self.add_user(email, password, role)
		User.create(:email => email, :password => password, :role => role)    
	end
  
	def self.count_users

		User.count	

	end

  def self.view_users(page_number)
        
    User.paginate(:order =>"created_at DESC",:page => page_number, :per_page => 15)
    
  end

#	def self.get_preference
				
#		Preference.first
		
#	end
  
#	def self.count_preference

#		Preference.count	

#	end


end
