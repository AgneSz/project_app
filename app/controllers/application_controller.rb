class ApplicationController < ActionController::Base
  def hello
    render html: "Hello world"
  end

  include SessionsHelper

  private

  def logged_in_user
   unless logged_in?
    store_location
    flash[:danger] = "Please log in"
    redirect_to login_url
  end
 end
end
