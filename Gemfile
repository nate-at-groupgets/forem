source "https://rubygems.org"

gem 'forem-theme-base', :git => "git://github.com/knewter/forem-theme-base", :branch => "master"

gemspec

gem 'pry-rails'
gem 'pry-nav'
gem 'cancancan'
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'rails', '~> 5.0.0'
gem 'activesupport'
gem 'listen'
gem 'rspec-activemodel-mocks'
gem 'yajl-ruby', '>= 1.3.0'

platforms :jruby do
  gem "activerecord-jdbc-adapter", :require => false
end

group :test do
  platforms :ruby, :mingw do
    gem "forem-redcarpet", :github => "trakt/forem-redcarpet"
    gem "mysql2"
    gem "sqlite3", '~> 1.3.6'
  end

  platforms :jruby do
    gem "activerecord-jdbcmysql-adapter", :require => false
    gem "activerecord-jdbcpostgresql-adapter", :require => false
    gem "activerecord-jdbcsqlite3-adapter", :require => false
    gem "forem-kramdown", :github => "phlipper/forem-kramdown", :branch => "master"
  end
end

if RUBY_VERSION < '1.9.2'
  gem 'nokogiri', '~> 1.5.9'
end
