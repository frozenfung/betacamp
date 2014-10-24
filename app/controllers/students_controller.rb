class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @studnet = Student.find(param[:id])
  end


end
