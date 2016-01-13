class EmployeesController < ApplicationController

  def member
    @employee = Employee.first
  end

  def team
    @employees = Employee.all
  end

end
