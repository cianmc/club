module ApplicationHelper
	def signed_in?
		if session[:member_id].nil?
			return
		else
			@current_member = Member.find_by_id(session[:member_id])
		end	
	end
	
	def secondsigned_in?
		if session[:user_id].nil?
			return
		else
			@secondcurrent_user = User.find_by_id(session[:user_id])
		end
	end

	def age(dob)
		today = Date.today
		age = today.year - dob.year
		age -= 1 if dob.strftime("%m%d").to_i > today.strftime("%m%d").to_i
		age
	end
end
