class SessionsController < ApplicationController
  def create
    patient=Patient.find_by(username:params[:username])
    if patient&.authenticate(params[:password])
        session[:user_id]=patient.id
        # render json: subscriber
        render json: {success:"Welcome #{patient.username}"}
    else
        render json:{error:"Invalid username or password"}, status: :unauthorized
    end
end

def destroy
    session.delete :user_id

  return head :no_content
end

end
