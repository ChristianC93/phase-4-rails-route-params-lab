class StudentsController < ApplicationController

  def index
    if params[ :name ]
      capital_name = params[ :name ].capitalize()
      students_matching_capital_name =  Student.all.filter{ |student| student.first_name == capital_name || student.last_name == capital_name }
      render json: students_matching_capital_name
    else
      students = Student.all
      render json: students
    end
  end

  def show
    student = Student.find( params[ :id ] )
    render json: student
  end

end
