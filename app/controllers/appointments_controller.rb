class AppointmentsController < ApplicationController
<<<<<<< HEAD
  
=======

>>>>>>> 3fd7f218b8fd2c806c7a4a869cffa9bd76e03873
  skip_before_action :is_doc, only: [:index, :create]
  skip_before_action :authorize, only: [:index, :create]
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    render json: Appointment.all.order(:startDate), status: :ok
  end

  def show
    appointment = find_appointment
    render json: appointment, status: :ok
  end

  def create
    render json: Appointment.create!(appointment_params), status: :created
  end

  def update
    appointment = find_appointment
    render json: appointment.update!(appointment_params), status: :ok
  end

  def destroy
    appointment = find_appointment
    appointment.destroy
    head :no_content
  end


private

def find_appointment
  Appointment.find(params[:id])
end

def appointment_params
<<<<<<< HEAD
  params.permit(:id, :title, :location, :startDate, :endDate, :description, :patient_id, :doctor_id)
=======
  params.permit(:id, :title, :startDate, :endDate, :description, :patient_id, :doctor_id)
>>>>>>> 3fd7f218b8fd2c806c7a4a869cffa9bd76e03873
end

def record_invalid(invalid)
  render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

def record_not_found(not_found)
  render json: not_found, status: 404
end

end
