class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include ApplicationHelper

  def authorise
	 unless signed_in?
		store_location
		redirect_to login_path,:notice => "please sign in as a member to access this page. "
	end
   end
   
   def secongauthorise
		unless secondsigned_in?
			if session[:user_id].nil?
				return
			else
				@secondcurrent_user = User.find_by_id(session[:user_id])
			end
		end	
	end
		
   private
	def store_location
		session[:return_to] = request.fullpath
	end	
end

