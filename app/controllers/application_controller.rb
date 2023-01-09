class ApplicationController < ActionController::API

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, "my_s3cr3t")
  end

end
