class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  mount_uploader :avatar, ImageUploader

  has_many :posts, dependent: :destroy, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy, foreign_key: 'user_id'

  has_many :likes, as: :likeable, dependent: :destroy
        
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  scope :search, ->(query) { query.present? ? where("username ILIKE ? OR first_name ILIKE ? OR last_name ILIKE ?", "%#{query}%", "%#{query}%", "%#{query}%") : none }

  scope :following?, ->(user) { followees.include?(user) }
  scope :followers?, ->(user) { followers.include?(user) }
end
