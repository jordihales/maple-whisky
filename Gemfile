source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby File.read(".ruby-version").chomp
gem 'rails', '6.0.0.rc1'
gem 'pg'
gem 'puma'
gem 'webpacker'
gem 'mini_magick'
gem 'bootsnap', require: false
gem 'canonical-rails'
gem 'simple_form'
gem 'invisible_captcha'
gem 'spina', github: 'SpinaCMS/spina', branch: 'master'
gem 'aws-sdk-s3', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'govuk-lint'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
