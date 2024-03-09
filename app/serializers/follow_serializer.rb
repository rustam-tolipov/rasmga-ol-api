class FollowSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :avatar, :is_followed

  def avatar
    if object.avatar.present?
      object.avatar.url
    else
      "https://ui-avatars.com/api/?name=#{object.username}&background=random"
    end
  end

  def is_followed
    current_user.followees.include?(object)
  end
end
