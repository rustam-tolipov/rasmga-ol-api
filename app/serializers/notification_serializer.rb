class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :username, :avatar, :read, :post_id, :comment_id, :thumb

  def message
    if object.message.include?("liked")
      "#{User.find(object.sender_id).username} liked your post"
    else
      "#{User.find(object.sender_id).username} commented on your post"
    end
  end

  def username
    User.find(object.sender_id).username
  end
end