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
    admin = params[:admin] 

    if admin.nil?
      role = "user"
    else
      role = "admin"
    end

    User.add_user(email, password, role)

    @preferences = Preference.get_preference

  end

  def remove_user

    @preferences = Preference.get_preference

  end

end
