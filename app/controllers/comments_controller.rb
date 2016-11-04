class CommentsController < ApplicationController	
	before_action :authorise
	
	def create
		@fixture = Fixture.find params[:fixture_id]
		@comment = @fixture.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
		
		respond_to do |format|
			format.html{redirect_to @fixture}
		end	
	end
	
	private
	def comment_params
		params.require(:comment).permit(:content, :fixture_id, :user_id)
	end
end

end
