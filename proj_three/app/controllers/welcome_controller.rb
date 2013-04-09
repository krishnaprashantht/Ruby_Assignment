class WelcomeController < ApplicationController



	def index

		puts "\n\nInside Welcome Controller\n\n"	
	
		@preferences = Preference.get_preference
	
	end
end
