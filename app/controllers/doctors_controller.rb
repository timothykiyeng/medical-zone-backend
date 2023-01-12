class DoctorsController < ApplicationController
    skip_before_action :authorize
    skip_before_action :is_doc
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
   
    def index
        doctors = Doctor.all
        render json: doctors, status: :ok
    end

    def show
        doctor = Doctor.find(params[:id])
        render json: doctor, status: :ok
    end

    private
    def find_doctor
       Doctor.find(params[:id])
    end

    def render_not_found_message
        render json: {error: 'Doctor not found'}, status: 404
    end

    def doctor_params
        params.require(:doctor).permit(:id, :title, :name, :bio, :department_id, :patient_id, :email, :password_digest)
    end

    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
