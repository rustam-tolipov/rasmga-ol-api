class PostsUserSerializer < ActiveModel::Serializer
  attributes :user

  DEFAULT_AVATAR = 'https://res-2.cloudinary.com/dhatgaadw/image/upload/v1661765174/e0eiopj9eqt5dwnt5n2v.jpg'

  def comment_user
    {
      id: object.user.id,
      username: object.user.username,
      first_name: object.User.first_name,
      last_name: object.User.first_name,
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