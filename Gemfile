source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "bootsnap", require: false
gem "cancancan"
gem "carrierwave"
gem "cloudinary"
gem "dockerfile-rails", ">= 1.6", group: :development
gem "dotenv-rails"
gem "devise"
gem "devise-jwt"
gem "factory_bot_rails", group: [:development, :test]
gem "faker", group: [:development, :test]
gem "image_processing", "~> 1.2"
gem 'active_model_serializers'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rack-cors"
gem "rails", "~> 7.0.4"
gem "rspec-rails"
gem "rswag"
gem "spring", group: :development
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "listen", "~> 3.3"
end