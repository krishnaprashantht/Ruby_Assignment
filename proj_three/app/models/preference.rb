class Preference < ActiveRecord::Base
	attr_accessible :business_news_preference, :latest_news_preference, :popular_news_preference, :sports_news_preference, :view_feedbacks_preference
  
	def self.up
		create_table :preferences do |p|
			p.integer :business_news_preference
			p.integer :latest_news_preference
			p.integer :popular_news_preference
			p.integer :sports_news_preference
			p.integer :view_feedbacks_preference
		end
	end
	
	def self.insert_preference(business_news_preference, latest_news_preference, popular_news_preference, sports_news_preference, view_feedbacks_preference)
		Preference.delete(first)
		Preference.create(:business_news_preference => business_news_preference, :latest_news_preference => latest_news_preference, :popular_news_preference => popular_news_preference, :sports_news_preference => sports_news_preference, :view_feedbacks_preference => view_feedbacks_preference)    
	end
  
	def self.get_preference
				
		Preference.find(first)
		
	end
  
	def self.down
		drop_table :preferences
	end
  
end
