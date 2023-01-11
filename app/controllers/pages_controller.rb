class PagesController < ApplicationController

	def index
		@users = User.all
		@posts = Post.all.order(created_at: :desc)
		@courses = Course.all
		if params[:filter_option]
			session[:filter_option] = params[:filter_option]
		else
			session[:filter_option] = session[:filter_option]
		end
		if params[:filter]
			session[:filter] = params[:filter]
		else
			session[:filter] = session[:filter]
		end
		session[:filter_option] = nil if session[:filter_option] == ""
		session[:filter] = nil if session[:filter] == ""
		if session[:filter_option] && session[:filter]
			@posts = @posts.where(subject: session[:filter_option], course: @courses.where(name: session[:filter]).first).order(created_at: :desc)
			@courses = @courses.where(name: session[:filter])
		elsif session[:filter_option]
			@posts = @posts.where(subject: session[:filter_option]).order(created_at: :desc)
		elsif session[:filter]
			@posts = @posts.where(course: @courses.where(name: session[:filter]).first).order(created_at: :desc)
			@courses = @courses.where(name: session[:filter])
		end
		render :index
	end
	
end
