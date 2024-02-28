require 'faker'

module SeedsHelper
  def create_user
    User.create!(
      email: Faker::Internet.email,
      password: "password",
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      username: Faker::Internet.username,
    )
  end
end