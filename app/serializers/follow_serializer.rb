class FollowSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :avatar
  
  DEFAULT_AVATAR = RANDOM_AVATAR
  
  def avatar
    object.avatar.url ? object.avatar.url : DEFAULT_AVATAR
  end
end
