class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image, :user_id, :created_at, :username, :avatar, :is_followed, :size, :is_video, :likes_count, :comments_count

  DEFAULT_AVATAR = RANDOM_AVATAR


  has_many :comments
  has_many :likes

  def username
    object.user.username
  end

  def avatar
    object.user.avatar.url ? object.user.avatar.url : DEFAULT_AVATAR
  end

  def is_followed
    User.first.followees.include?(object.user)
  end
end
