class EmployeesController < ApplicationController
  before_action :get_employee, only: [:show, :edit, :update, :destroy]
  before_action :all_dogs, only: [:new, :edit]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to @employee
    else
      all_dogs
      render :new
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)

    if @employee.valid?
      redirect_to @employee
    else
      all_dogs
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def get_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def all_dogs
    @dogs = Dog.all
  end
end
