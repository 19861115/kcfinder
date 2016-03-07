source 'https://rubygems.org'

ruby '2.3.0'
# -- essential --
group :default do
  gem 'rails', '4.2.5.2'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'jbuilder', '~> 2.0'
end

# -- database --
group :test, :development do
  gem 'sqlite3'
end

# -- document --
group :doc do
  gem 'sdoc', '~> 0.4.0', group: :doc
end

# -- test and development tool --
group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rubocop'
end

group :development, :test do
  gem 'byebug'
end
