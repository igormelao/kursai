class ClassroomsController < ApplicationController
  def index
    redirect_to new_classroom_path
  end

  def new
    @classroom = Classroom.new
  end

  def create
  	@classroom = Classroom.new(classroom_params)
    if @classroom.save
      flash[:notice] = t('flash.actions.create.notice', resource_name: t('classroom'))
    end
    respond_with @classroom, location: -> { courses_path }
  end

  # private methods

  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id, :entry_at)
  end
end
