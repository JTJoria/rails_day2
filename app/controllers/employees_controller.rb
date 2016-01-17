class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

   def show
    @employee = Employee.find_by(id: params[:id])
  end

  def new
  end

  def create 
    @employee = Employee.create({first_name: params[:first_name], last_name: params[:last_name], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender]})
  end

end
