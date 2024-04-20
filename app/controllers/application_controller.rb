class ApplicationController < ActionController::Base

	helper_method :current_user, :logged_in?, :redirect_back_link

	private

	def authenticate_user!  
		unless current_user
		redirect_location
		redirect_to login_path, alert: 'Are u a Guru? Verify your Email and Password'
		end
		cookies[:email] = current_user&.email
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
	end

	def logged_in?
		current_user.present?
	end

	def redirect_back_link(default)
	    redirect_to(session[:forwarding_url] || default)
	    session.delete(:forwarding_url)
 	end

    def redirect_location
   	 session[:forwarding_url] = request.url if request.get?
  	end
end
