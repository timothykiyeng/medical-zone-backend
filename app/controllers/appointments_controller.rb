class AppointmentsController < ApplicationController

  def index
    render json: Appointment.all.order(:start_date), status: :ok
  end

end


private

def find_appointment
  Appointment.find(params[:id])
end
