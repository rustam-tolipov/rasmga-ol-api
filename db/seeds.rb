
# User.create!(username: "admin", email: "admin@gmail.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User", bio: "I am an admin user", avatar: "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200")
# User.create!(username: "user", email: "user@gmail.com", password: "password", password_confirmation: "password", first_name: "Regular", last_name: "User", bio: "I am a regular user", avatar: "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200")
# User.create!(username: rand(36**8).to_s(36), email: rand(36**8).to_s(36) + "@gmail.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User", bio: "I am an admin user", avatar: "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200")

10.times do
  User.create!(username: rand(36**8).to_s(36), email: rand(36**8).to_s(36) + "@gmail.com", password: "password", password_confirmation: "password", first_name: "Regular", last_name: "User", bio: "I am a regular user", avatar: "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200")
end