class PatientsController < ApplicationController

    skip_before_action :is_doc, only: [:create, :index, :show]
    skip_before_action :authorize, only: [:create, :index, :show]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: Patient.all.order(:name), status: :ok
    end 

    def show
        patient = Patient.find_by(id:params[:id])
        render json: patient, status: :ok, include: :doctor
    end

    def create
        patient = Patient.create!(patient_params)
        render json: patient, status: :created
    end

    def destroy
        patient = Patient.find_by(id: params[:id])
        if patient
          Patient.destroy
          head :no_content
        else
          render json: { error: "Patient not found" }, status: :not_found
        end
    end

    private

    def patient_params
        params.permit(:name, :age, :birthdate, :email, :gender, :password, :password_confirmation, :doc)
    end

    def render_not_found_response
        render json: { error: "Patient not found" }, status: :not_found
    end
    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end

