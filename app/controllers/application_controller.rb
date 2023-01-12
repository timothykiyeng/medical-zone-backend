class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorize

  before_action :is_doc

  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_response
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def current_user
    Doctor.find_by(id: session[:current_user])
  end

  def authorize
    render json: { errors: ["Not authorized"] }, status: :unauthorized unless current_user
  end

  def is_doc
    return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user.doc
  end
  
  private
  def record_invalid_response(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
  def record_not_found(notfound)
    render json: {error: "#{notfound.model} not found"}, status: :not_found
  end
end

# class ApplicationController < ActionController::API

# #   before_action :authorized

# #   def encode_token(payload)
# #     JWT.encode(payload, "my_s3cr3t")
# #   end

# #   def auth_header
# #     # { Authorization: 'Bearer <token>' }
# #     request.headers["Authorization"]
# #   end

# #   def decoded_token
# #     if auth_header
# #       token = auth_header.split(" ").last
# #       # header: { 'Authorization': 'Bearer <token>' }
# #       begin
# #         JWT.decode(token, "my_s3cr3t", true, algorithm: "HS256")
# #       rescue JWT::DecodeError
# #         nil
# #       end
# #     end
# #   end

# #   def authorized
# #     unless logged_in?
# #       render json: { message: "Please log in" }, status: :unauthorized
# #     end
# #   end

# #   def current_user
# #     if decoded_token
# #       doctor_id = decoded_token[0]['doctor_id']
# #       doctor = Doctor.find_by(id: doctor_id)
# #     end
# #   end
# # def current_patient
# #   if decoded_token
# #     patient_id = decoded_token[0]['patient_id']
# #     patient = Patient.find_by(id: patient_id)
# #   end
# # end
# #   def logged_in?
# #     !!current_user || !!current_patient
# #   end
# end

