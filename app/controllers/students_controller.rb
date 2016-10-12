class StudentsController < ApplicationController
	respond_to :html

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			flash[:notice] = t('flash.actions.create.notice', resource_name: @student.name)
		end
		respond_with @student, location: -> { students_path }
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update(student_params)
			flash[:notice] = t('flash.actions.update.notice', resource_name: @student.name)
		end
		respond_with @student
	end

	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			flash[:notice] = t('flash.actions.destroy.notice', resource_name: @student.name)
		end
		respond_with @student, location: -> { students_path } 
	end

	private

	def student_params
		params.require(:student).permit(:name, :register_number, :status)
	end
end
