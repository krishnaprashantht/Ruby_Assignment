class BusinessNewsController < ApplicationController
	def show_business_news
	
		@preferences = Preference.get_preference
	
	end
end
