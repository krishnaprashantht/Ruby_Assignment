class BusinessNewsController < ApplicationController
	def show_business_news
	
		@preferences = Preference.get_preference
		
		if request.xhr?
			render :layout => false
		end
		
		#render :template => 'business_news/show_business_news.html.erb'
		
		#render :layout => "business_news/show_business_news"
		
	end
end
