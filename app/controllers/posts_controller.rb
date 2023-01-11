class PostsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@posts = @user.posts
		session[:filter_option] = params[:filter_option]
		if session[:filter_option]
			@posts = @posts.where(subject: session[:filter_option])
		end
		render :index
	end

	def edit
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		render :edit
	end

	def update
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		if @post.update(params.require(:post).permit(:text, :subject))
		flash[:success] = "Your post successfully updated!"
		redirect_to home_path
		else
		flash.now[:error] = "Your post update failed"
		render :edit
		end
	end

	
	def create
		@user = User.find(params[:user_id])
		@post = @user.posts.new(params.require(:post).permit(:text, :subject, :image, :course_id))
		if @post.save
			flash[:success] = "Post published"
			redirect_to home_path
		else
			flash.now[:error] = "Post submition failed"
			render :new
		end
	end


	def show
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		@comments = @post.comments
		render :show
	end

	def new
		@user = User.find(params[:user_id])
		@post = Post.new
		@courses = Course.all
		render :new
	end

	def initialize_search
		session[:filter_option] = params[:filter_option]
	end
	  	
	def handle_filters
		if session[:filter_option] == "Lost Disc"
			@posts = @posts.where(subject: 'Lost Disc')
		elsif session[:filter_option] == "Score"
			@posts = @posts.where(subject: 'Score')
		end
	end

end
