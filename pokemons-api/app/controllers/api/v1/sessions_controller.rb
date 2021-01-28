class Api::V1::SessionsController < ActionController::API
  def create
    user = User.where(email: params[:email]).first

    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
    else
      head(:unathorized)
    end
  end

  def destroy
  end
end