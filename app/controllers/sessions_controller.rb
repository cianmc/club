class SessionsController < ApplicationController
   def create
	member = Member.find_by_email(params[:email])
	if member && member.authenticate(params[:password])
		session[:member_id] = member.id
		redirect_to session[:return_to] || root_path
	else
		flash.now[:error]="Invalid email/password combination."
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:member_id] = nil
	else
		flash[:notice]= "Yon need to log in first"
	end
	redirect_to login_path	
  end
  
  def new
  end
  
 def secondnew
 end
 
 def secondcreate
	user = User.find_by_email(params[:email])
	if user and user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to session[:return_to] || root_path
	else
		redirect_to secondlogin_path, alert: "Invalid second user/password combination"
		flash.now[:error]="Invalid email/password combination."
		render 'new'
	end
 end
 
 def seconddestroy
	session[:user_id] = nil
	redirect_to root_path, notice: "Logged out"
 end
end

  
 