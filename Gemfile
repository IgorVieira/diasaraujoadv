source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'ckeditor'
gem "paperclip-dropbox", ">= 1.1.7"
gem 'mini_magick'
gem 'friendly_id', '~> 5.1'
gem 'devise', '~> 4.2'
gem 'materialize-sass'
gem 'will_paginate', '~> 3.0', '>= 3.0.7'
gem 'mail_form', '~> 1.5', '>= 1.5.1'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :production do
  gem 'non-stupid-digest-assets', '~> 1.0', '>= 1.0.8'
	gem 'pg'
	gem 'rails_12factor'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
