source 'https://rubygems.org'

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Jquery ui
gem 'jquery-ui-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# User management
gem 'devise', '4.4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use HAML for views
gem 'haml'

# Enable Facebook authentication.
gem 'omniauth-facebook'

# Admin backend
gem 'activeadmin', github: 'activeadmin'
gem 'cancan' # or cancancan
gem 'draper'
gem 'pundit'

# Image gallery
gem 'blueimp-gallery'

# Pagination
gem 'kaminari-bootstrap'
gem 'kaminari'

# Filtering
gem 'filterrific'

# Images at S3
gem 'paperclip'
gem 'aws-sdk', '< 2'
gem 'aws-sdk-s3'
gem 'rmagick', '~> 2.16.0'

gem 'nokogiri'

gem 'newrelic_rpm', '~> 6.0.0'

gem 'cocoon'
gem 'simple_form'
gem 'font-awesome-sass'
gem 'google-api-client'
gem 'rack-timeout'

gem 'paper_trail'

gem 'schema_validations'

# recaptcha to identify humans - for setup where registration is open for all
gem 'recaptcha', require: "recaptcha/rails"

# Better distance_of_time_in_words
gem 'dotiw'

# rtl<>ltr automatically
gem 'string-direction'

# Inline editing
gem 'best_in_place', '~> 3.0.1'
# Tag dreams
gem 'acts-as-taggable-on', '~> 4.0'

group :production do
  # needed by herokus
  gem 'rails_12factor'
  # postgres
  gem 'pg'
  # needed by aws
  gem 'puma', '3.11.4'
end

group :production, :staging do
  gem 'raygun4ruby'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.1'
  # For environment vars
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.6.4'

  # Use rspec for testing the thing
  gem 'rspec-rails'

  # Use faker to get random test data
  gem 'faker'

  # Awesome print helps us print!
  gem 'awesome_print'

  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', group: :doc
end
