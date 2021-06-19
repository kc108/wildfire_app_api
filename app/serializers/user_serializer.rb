class UserSerializer < ActiveModel::Serializer
  attributes :username

  # # can use this to get data not in our DB.
  # attribute :role do |user|
  #   if user.admin?
  #     "admin"
  #   else
  #     "plain user"
  #   end
  # end
end
