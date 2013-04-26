class LatestNewsController < ApplicationController
	def show_latest_news
  
		@preferences = Preference.get_preference
			
	end
end
