class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def encode_token(payload)
        JWT.encode(payload, "10")
    end

    def auth_header
        request.headers["Authorization"]
    end

    # [{"user_id"=>1}, {"alg"=>"HS256"}]
    def decoded_token
        if auth_header
            token = auth_header.split(" ")[1]
            begin
                JWT.decode(token, "10")
            rescue JWT::DecodeError
                nil
                
            end
        end
    end

    def current_user
        if decoded_token
            # "user_id" reprez value of above "user_id" comment
            user_id = decoded_token[0]["user_id"]
            @user = User.find_by(id: user_id)
        end
    end
end

# {
#     'Authorization': 'Bearer fdjfdf.fdsfsdffsd.jrdhejf'
# }