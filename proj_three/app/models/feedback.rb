class Feedback < ActiveRecord::Base
	attr_accessible :name, :email, :feedback
	
	def self.up
		create_table :feedbacks do |f|
			f.string :name
			f.string :email
			f.text :feedback
		end
	end
	
	def self.insert_feedback(name, email, feedback)
		Feedback.create(:name => name, :email => email, :feedback => feedback)    
	end
	
	def self.view_feedback(page_number)
				
		Feedback.paginate(:order =>"created_at DESC",:page => page_number, :per_page => 4)
		
	end

	def self.down
		drop_table :feedbacks
	end
end