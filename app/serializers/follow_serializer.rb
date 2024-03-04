class FollowSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :avatar
end
