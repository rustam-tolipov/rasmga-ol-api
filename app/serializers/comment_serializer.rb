class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :user_id, :post_id, :likes, :avatar

  has_many :likes

  def avatar
    object.user.avatar.url || "https://ui-avatars.com/api/?name=#{object.user.username}&background=random"
  end
end
