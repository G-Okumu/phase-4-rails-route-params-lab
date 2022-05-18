class StudentsController < ApplicationController

  def index
    # if params[:name]
    #   student = Student.where(params[:name])
    #   render json: student
    # else
    #   student = Student.all
    #   render json: student
    # end
    students = if params[:name]
      Student.by_search(params[:name])
    else
      Student.all
    end    
render json: students

  end

  def single_student
    single_student = Student.find(params[:id])
    render json: single_student
  end

end
