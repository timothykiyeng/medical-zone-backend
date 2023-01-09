class MedicalHistoriesController < ApplicationController
  def index
    render json: MedicalHistory.all, status: :ok
  end
end
