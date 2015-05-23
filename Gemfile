source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.0'
gem 'puma'
gem 'pg'

gem 'devise'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'font-awesome-sass', '~> 4.3.0'
gem 'autoprefixer-rails'
gem 'react-rails', '~> 1.0.0.pre', github: 'reactjs/react-rails'
gem 'therubyracer', :platforms => :ruby
gem 'github-markdown'

group :development do
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'quiet_assets'
  gem 'spring'
  gem 'codeclimate-test-reporter', require: nil
end

group :production do
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end
