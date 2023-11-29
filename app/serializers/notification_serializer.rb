class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :username, :avatar, :read, :post_id, :comment_id

  def avatar
    object.user.avatar.url ? object.user.avatar.url : "https://placehold.co/600x600/EEE/31343C"
  end
  
  def username
    object.user.username
  end
end