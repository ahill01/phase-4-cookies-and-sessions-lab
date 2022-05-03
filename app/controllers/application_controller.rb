class ApplicationController < ActionController::API
  include ActionController::Cookies
  def show
    byebug;
    session[:page_views] ||=0
    session[:page_views] = sessions[:page_views].to_i += 1
  end
end
