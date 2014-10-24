class StudentsController < ApplicationController

before_action :set_student, only => [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save

    redirect_to students_path
  end

  def edit
  end

  def update
    @student.update_attributes(student_params)

    redirect_to student_path(@student)
  end


  def destroy
    @student.destroy

    redirect_to students_path

  end

  def student_params
    params.require(:student).permit(:name, :gender, :student_class, :status)
  end
end
