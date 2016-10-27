module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authenticate
    redirect_to '/login' unless logged_in?
  end

  # def user_is_owner(owner_id)
  #   current_user.id == owner_id if logged_in?
  # end
end
