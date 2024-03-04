class PostsUserSerializer < ActiveModel::Serializer
  attributes :user

  def comment_user
    {
      id: object.user.id,
      username: object.user.username,
      first_name: object.current_user_name,
      last_name: object.current_user_name,
      avatar: user_avatar
    }
  end

  def user_avatar
    if object.user.avatar.url.present?
      object.user.avatar.url
    else
      DEFAULT_AVATAR
    end
  end
end