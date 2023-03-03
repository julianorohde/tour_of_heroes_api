source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2' #, :engine => 'ruby', :engine_version => '2.7.2', :stack => 'heroku-20'

gem 'rails', '~> 6.1.7', '>= 6.1.7.2'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem "active_model_serializers", "~> 0.10.13"
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "rubocop", require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4' 
  gem "rspec-rails", "~> 6.0"
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem "faker", "~> 3.1"
end

group :test do
  gem "shoulda-matchers", "~> 5.3"
  gem "simplecov", "~> 0.22.0", require: false
end

group :production do
  gem "pg", "~> 1.4"
end


