source "https://rubygems.org"

gem "rails", github: "rails/rails"

# Use pg as the database for Active Record
gem "pg"
# Use Puma as the app server
gem "puma"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", github: "rails/coffee-rails"

gem "haml-rails"
gem "bootstrap", "~> 4.0.0.alpha3"

# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes following links in your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"
# Use Redis adapter to run Action Cable in production
gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "sidekiq"

# for hostnames
gem "faker"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "guard"
  gem "byebug"
  gem "rspec-rails", "~> 3.0"
  gem "capybara"
  gem "selenium-webdriver"
  gem "guard-rspec", require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", github: "rails/web-console"
  gem "listen", "~> 3.0.5"
end

source "https://rails-assets.org" do
  gem "rails-assets-tether", ">= 1.1.0"
end

group :test do
  gem "database_cleaner"
end
