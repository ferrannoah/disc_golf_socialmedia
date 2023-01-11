class CoursesController < ApplicationController

	def show
		@course = Course.find(params[:id])
		@posts = @course.posts.order(created_at: :desc)
		render :show

	end

end
