class CommentsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:post_id])
		@comment = @post.comments.new
		render :new
	end

	def create
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:post_id])
		@comment = @post.comments.new(params.require(:comment).permit(:text))
		@comment.user = current_user
		if @comment.save
			flash[:success] = "Comment published"
			redirect_to home_path
		else
			flash.now[:error] = "Comment submition failed"
			render :new
		end
	end

end
