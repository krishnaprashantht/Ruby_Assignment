class WelcomeController < ApplicationController

	def index

		@preferences = Preference.get_preference
	
	end
end
