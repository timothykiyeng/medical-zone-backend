class DoctorJwtController < ApplicationController
  skip_before_action :authorized, only:[:create]
    def create
        doctor = Doctor.find_by(username: params[:username])
        if doctor &.authenticate(params[:password])
            token = encode_token(doctor_id: doctor.id)
            render json: { doctor: DoctorSerializer.new(doctor), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid username or password" }, status: :unauthorized
        end
    end
end
