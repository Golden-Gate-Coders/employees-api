class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.create(
        name: params[:name],
        email: params[:email],
        ssn: params[:ssn]
      )

    render :show
  end

end
