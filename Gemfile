source 'https://rubygems.org'

ruby '2.5.3'

gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
gem 'sqlite3'
gem 'puma', '~> 3.11'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'figaro'
gem 'faraday'
gem 'fast_jsonapi'

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
  gem 'pry'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
