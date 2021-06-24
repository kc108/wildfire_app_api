class SessionsController < ApplicationController
    def create
        user = User.find_by(username: user_params[:username])
        if user && user.authenticate(user_params[:password])
            jwt_token = encode_token({user_id: user.id})

            render json: { user: UserSerializer.new(user), jwt_token: jwt_token }
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end