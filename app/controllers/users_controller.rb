class UsersController < ApplicationController

    def create

        user = User.new(user_params)

        if user.save

            jwt_token = encode_token({user_id: user.id})

            render json: { user: UserSerializer.new(user), jwt_token: jwt_token }
        else
            render(status: 422, json: { user: user, errors: user.errors })
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end