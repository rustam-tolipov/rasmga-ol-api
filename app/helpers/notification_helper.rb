module NotificationHelper
  def notify_user(message, post = nil)
    if Notification.where(message: message, user_id: post.user_id, sender_id: current_user.id, post_id: post.id).exists?
      return
    end

    Notification.create(
      {
        message: message,
        user_id: post.user_id,
        post_id: post.id,
        sender_id: current_user.id,
        receiver_id: post.user_id,
        username: current_user.username,
        avatar: current_user.avatar.blank? ? "https://ui-avatars.com/api/?name=#{current_user.username}&background=random" : current_user.avatar.url,
        thumb: post.image.thumbnail.url
      }
    )
  end
end