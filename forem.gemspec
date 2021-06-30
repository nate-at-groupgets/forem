require File.expand_path('../lib/forem/version', __FILE__)
# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = 'forem'
  s.authors = ['Ryan Bigg', 'Philip Arndt', 'Josh Adams']
  s.summary = 'The best Rails 3 forum engine in the world.'
  s.description = 'The best Rails 3 forum engine in the world.'
  s.files = `git ls-files`.split("\n")
  s.version = ::Forem.version

  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rails'
  s.add_development_dependency 'jquery-rails'

  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'devise'
  s.add_development_dependency 'kaminari'
  s.add_development_dependency 'timecop'

  # s.add_dependency 'rails'
  s.add_dependency 'simple_form'
  s.add_dependency 'sanitize'
  s.add_dependency 'workflow-activerecord'
  s.add_dependency 'gemoji'
  s.add_dependency 'decorators'
  s.add_dependency 'select2-rails'
  s.add_dependency 'friendly_id'
end
