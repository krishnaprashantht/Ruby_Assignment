class BusinessNewsController < ApplicationController
	def show_business_news
	
		@preferences = Preference.get_preference

		


	#	puts "\n\n\n\nInside Business controller -- before render partial\n\n\n\n"

		#respond_to do |format|
		#	puts "\n\n\n\nInside Business controller -- respond_to method\n\n\n\n"
 		#	format.js	
	#	end
		
		#render :partial => 'show_business_news'

		#render :template => 'business_news/show_business_news.html.erb'
		
		#render :layout => "business_news/show_business_news"
		
	end
end
