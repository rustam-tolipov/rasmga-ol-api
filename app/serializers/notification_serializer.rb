class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :username, :avatar, :read, :post_id, :comment_id, :thumb
end