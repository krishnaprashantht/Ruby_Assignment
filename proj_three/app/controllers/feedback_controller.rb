class FeedbackController < ApplicationController
  def view_feedback_page

  	@preferences = Preference.get_preference

  end

  def submit_feedback

    name = params[:feedback][:name] 
    email = params[:feedback][:email] 
    feedback = params[:feedback][:feedback] 
  
    Feedback.insert_feedback(name, email, feedback)
    
    @preferences = Preference.get_preference

  end

  def view_feedbacks

  	page_number = params[:page];
	  @feedbacks = Feedback.view_feedback(page_number)
	  
  	@preferences = Preference.get_preference

  end
end
