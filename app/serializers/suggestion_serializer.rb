class SuggestionSerializer < ActiveModel::Serializer
  attributes :user

  DEFAULT_AVATAR = 'https://placehold.co/600x600/EEE/31343C'

  def user
    {
      id: object.id,
      username: object.username,
      first_name: object.first_name,
      last_name: object.last_name,
      avatar: user_avatar
    }
  end

  def user_avatar
    if object.avatar.url.present?
      object.avatar.url
    else
      DEFAULT_AVATAR
    end
  end
end
