class UserController < ApplicationController
  def view_user_settings_page

    @preferences = Preference.get_preference

  end

  def view_add_user_page

    @preferences = Preference.get_preference

  end

  def view_remove_user_page

    @preferences = Preference.get_preference

  end

  def view_users

    page_number = params[:page];
    @users = User.view_users(page_number)
    @preferences = Preference.get_preference

  end

  def add_user

    email = params[:user][:email] 
    password = params[:user][:password] 
    confirmpassword = params[:user][:confirmpassword] 
    admin = params[:admin] 

    puts "\n\n\n\nadmin: #{admin}"
  
    if admin.nil?
      role = ""
    else
      role = "admin"
    end

    User.add_user(email, password, confirmpassword, role)

    @preferences = Preference.get_preference

  end

  def remove_user

    @preferences = Preference.get_preference

  end
end
