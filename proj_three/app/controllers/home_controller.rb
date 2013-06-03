class HomeController < ApplicationController

	def index

		

		@signin_count = User.signin_count

		@preferences_count = Preference.count_preference

		@count_users = User.count_users

		if @preferences_count == 0

			business_news = 1
			sports_news = 1
			latest_news = 1
			popular_news = 
			view_feedbacks = 1
			
			Preference.insert_preference(business_news, sports_news, latest_news, popular_news, view_feedbacks)
			
		end

		@preferences = Preference.get_preference
		
		if @count_users == 0

			puts "\n\n\n\ncount users 0\n\n\n\n"	

			email = "krishnaprashanth.t@tcs.com"
			password = "12345678"
			role = "admin"

			User.add_user(email, password, role)
			
		end

			
  	end

end
