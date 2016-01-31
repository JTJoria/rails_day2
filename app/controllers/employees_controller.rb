class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    if params[:category]
      @employees = category.find_by(name: params[:group]).employees
    end
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    @categories = @employee.category
  end

  def new
  end

  def create 
    @employee = Employee.create({first_name: params[:first_name], last_name: params[:last_name], address: params[:address], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender]})

    redirect_to "/employees"
  end

  def edit
    @employee = Employee.find_by(id: params[:id])
  end

  def update
    @employee = Employee.find_by(id: params[:id])

    @employee.update({first_name: params[:first_name], last_name: params[:last_name], address: params[:address], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender]})
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy

    flash[:warning] = "Employee Gone!"
    redirect_to "/employees"
  end

end

# , user_id: current_user.id