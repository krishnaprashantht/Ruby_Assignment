class PopularNewsController < ApplicationController
	def show_popular_news
	
		@preferences = Preference.get_preference
  
	end
end
