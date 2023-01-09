class ApplicationController < ActionController::API

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

end
