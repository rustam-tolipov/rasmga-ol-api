class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :user_id, :post_id, :likes

  has_many :likes
end
