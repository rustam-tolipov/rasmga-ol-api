class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image, :user_id, :created_at, :username, :avatar, :size, :is_video, :likes_count, :comments_count

  has_many :comments
  has_many :likes

  def username
    object.user.username
  end

  def avatar
    object.user.avatar.url ? object.user.avatar.url : "https://ui-avatars.com/api/?name=#{username}&background=random"
  end
end
