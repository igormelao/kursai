class CoursesController < ApplicationController
	respond_to :html

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		if @course.save
	      flash[:notice] = t('flash.actions.create.notice', resource_name: @course.name)
	    end
	    respond_with @course, location: -> { courses_path }
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_params)
			flash[:notice] = t('flash.actions.update.notice', resource_name: @course.name)
	    end
	    respond_with @course
	end

	def destroy
		@course = Course.find(params[:id])
	    if @course.destroy
	      flash[:notice] = t('flash.actions.destroy.notice', resource_name: @course.name)
	    end
	    respond_with @course, location: -> { courses_path }
	 end

	private

	def course_params
		params.require(:course).permit(:name, :description, :status)
	end

end
