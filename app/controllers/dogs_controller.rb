class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def sorted
    @dogs = Dog.sort_by_employee_number
    render :index
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
