class FollowSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :avatar

  def avatar
    if object.avatar.present?
      object.avatar.url
    else
      "https://ui-avatars.com/api/?name=#{object.username}&background=random"
    end
  end
end
