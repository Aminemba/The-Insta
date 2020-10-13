source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 6.0', '>= 6.0.3.3'
gem 'rake', '~> 13.0', '>= 13.0.1'
gem 'bootstrap', '~> 4.0.0'
gem 'bootsnap', '~> 1.4', '>= 1.4.8'
gem 'faker', :require => false
gem 'carrierwave', '~> 2.1'
gem 'mini_racer'
gem 'cloudinary'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'dropzonejs-rails'
gem 'figaro'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'meta-tags'
gem 'omniauth', '~> 1.6'
gem 'omniauth-twitter'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'toastr-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate-bootstrap4'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'pry-rails'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener_web'
end
group :production do
  gem 'pg'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
