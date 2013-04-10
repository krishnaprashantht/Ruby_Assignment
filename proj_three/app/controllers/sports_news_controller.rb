class SportsNewsController < ApplicationController
	def show_sports_news
  
	@preferences = Preference.get_preference
	
	end
end
