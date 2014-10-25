class StudentsController < ApplicationController

before_action :set_student, :only => [:show, :edit, :update, :destroy]

  def index
    @students = Student.page(params[:page]).per(5)
    @student = Student.new
  end

  def show

  end

  def new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:create_success] = @student.name + ' is added Successfully!'
      redirect_to students_path
    else
      redirect_to students_path
    end
  end

  def edit
  end

  def update
    if @student.update_attributes(student_params)
      flash[:update_success] = 'Updated Successfully!'
      redirect_to student_path(@student)
    else
      render :action => :edit
    end
  end


  def destroy
    flash[:delete_success] = @student.name + ' is Deleteeeeeeeeeed!'
    @student.destroy
    redirect_to students_path
  end


  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :gender, :student_class, :status)
  end
end
