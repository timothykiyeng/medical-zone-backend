class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, "my_s3cr3t")
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers["Authorization"]
  end
end
