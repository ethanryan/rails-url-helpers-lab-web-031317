class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id]) #adding this
  end
  
  def activate
    @student = Student.find(params[:id]) #adding this
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    @student.save #save, not update!
    redirect_to student_path(@student)
    #got redirect from a classmate
  end


  private

  def set_student
    @student = Student.find(params[:id])
  end
end
