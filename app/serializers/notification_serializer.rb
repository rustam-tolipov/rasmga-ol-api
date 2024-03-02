class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :username, :avatar, :read, :post_id, :comment_id, :thumb

  def avatar
    object.user.avatar.url ? object.user.avatar.url : "https://placehold.co/600x600/EEE/31343C"
  end
  
  def username
    object.user.username
  end

  def thumb
    if object.post
      object.post.image.thumbnail.url
    else
      object.comment.post.image.thumbnail.url
    end
  end
end