class JwtController < ApplicationController
  skip_before_action :authorized, only:[:create]

  def create
      patient = Patient.find_by(username: params[:username])
      if patient &.authenticate(params[:password])
          token = encode_token(patient_id: patient.id)
          render json: { patient: PatientSerializer.new(patient), jwt: token }, status: :accepted
      else
          render json: { errors: "Invalid username or password" }, status: :unauthorized
      end
  end
end
