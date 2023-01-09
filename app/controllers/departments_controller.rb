class DepartmentsController < ApplicationController
  def index
    render json: Department.all, status: :ok
  end
end
