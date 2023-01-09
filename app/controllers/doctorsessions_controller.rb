class DoctorsessionsController < ApplicationController
  def create
    doctor=Doctor.find_by(username:params[:username])
    if doctor&.authenticate(params[:password])
        session[:user_id]=doctor.id
        # render json:doctor,status: :created
        render json:{success:"Welcome #{doctor.username}"}
    else
        render json:{error:"Invalid username or password"}, status: :unauthorized
    end
end

def destroy
    session.delete :user_id
    return head :no_content
end
end
