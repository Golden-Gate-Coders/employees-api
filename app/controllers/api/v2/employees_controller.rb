class Api::V2::EmployeesController < ApplicationController

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


  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.name = params[:name]
    @employee.email = params[:email]
    @employee.ssn = params[:ssn]
    @employee.save

    render :show
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy

    # Option 1
    # @employees = Employee.all
    # render :index

    # Option 2
    render json: { message: "Employee #{params[:id]} was successfully deleted." }
  end

end
