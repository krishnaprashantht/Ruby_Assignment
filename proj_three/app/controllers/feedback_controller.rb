class FeedbackController < ApplicationController
<<<<<<< HEAD

	
	def submit_feedback
	
		name = params[:feedback][:name]	
		email = params[:feedback][:email]	
		feedback = params[:feedback][:feedback]	
	
		Feedback.insert_feedback(name, email, feedback)
		@preferences = Preference.get_preference
	
	end
	

	def view_feedback
  
		page_number = params[:page];
		@feedbacks = Feedback.view_feedback(page_number)
		@preferences = Preference.get_preference

  end


=======
  def submit_feedback
  end

  def view_feedback
  end
>>>>>>> 8d2cd4c58693106575e815d69b214da6e96c2cb2
end
