source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "rails", "~> 7.0.4"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "rack-cors"
gem 'rspec-rails'
gem 'dotenv-rails'
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.3'
  gem "spring"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'devise-jwt'
gem 'cloudinary'
gem 'carrierwave'
gem 'dotenv-rails'
gem 'rswag'
gem 'cancancan'
gem 'jsonapi-rails'
gem "dockerfile-rails", ">= 1.6", :group => :development
