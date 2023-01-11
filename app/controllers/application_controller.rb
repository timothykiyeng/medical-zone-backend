class ApplicationController < ActionController::API

  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, "my_s3cr3t")
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers["Authorization"]
  end

  def decoded_token
    if auth_header
      token = auth_header.split(" ").last
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, "my_s3cr3t", true, algorithm: "HS256")
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def authorized
    unless logged_in?
      render json: { message: "Please log in" }, status: :unauthorized
    end
  end

  def current_user
    if decoded_token
      doctor_id = decoded_token[0]['doctor_id']
      doctor = Doctor.find_by(id: doctor_id)
    end
  end
def current_patient
  if decoded_token
    patient_id = decoded_token[0]['patient_id']
    patient = Patient.find_by(id: patient_id)
  end
end
  def logged_in?
    !!current_user || !!current_patient
  end
end

