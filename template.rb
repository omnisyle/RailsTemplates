# Gems that I use
gem 'slim-rails', '3.0.1' if yes?("Use slim template engine?")
gem "haml" if yes?("Use haml template engine?")
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'puma'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise' if yes?("Add devise?")
gem 'simple_form'

gem_group :development do
  gem 'quiet_assets', '~> 1.1'
  gem 'awesome_print', '~> 1.6', '>= 1.6.1'
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'meta_request', '~> 0.3.4'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem_group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.4'
  gem 'shoulda-matchers', '~> 3.0', '>= 3.0.1'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'guard-rspec', '~> 4.6', '>= 4.6.4'
  gem 'ffaker', '2.1.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

gem_group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.1'
  gem 'selenium-webdriver', '~> 2.48', '>= 2.48.1'
  gem 'capybara', '~> 2.5'
end

gem_group :production do
  gem 'pg', '0.18.4'
  gem 'rails_12factor' if yes?("Use heroku for deployment?")
end

run 'mv README.rdoc README.md'
run 'scp ~/Sites/RailsTemplates/Procfile ./'
run 'bundle install'

after_bundle do
  git :init
  git add: '.'
  git commit: %Q{ -m 'Git init' }
end
