Gem::Specification.new do |s|
  s.name        = 'janrain-rails'
  s.author      = 'Paul Hepworth'
  s.email       = 'paul<dot>hepworth<at>peppyheppy<dot>com'
  s.version     = '0.0.1'
  s.homepage    = 'https://github.com/peppyheppy/janrain-rails'
  s.date        = '2011-11-05'
  s.summary     = "A ruby on rails gem that provides easy janrain integration for capture"
  s.description = "This gem allows you to get up and going with Janrain Capture"
  s.files       = s.files = `git ls-files`.split("\n")
  s.add_runtime_dependency "rails", ">= 3.0"
  s.add_runtime_dependency 'httparty'
  s.add_runtime_dependency "bitfields", ">= 0.4.0"
  s.add_development_dependency "ruby-debug19"
  s.add_development_dependency "rspec", "2.6.0"
  s.add_development_dependency "rspec-rails", "2.6.0"
  s.add_development_dependency "generator_spec", "0.8.3"
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rb-inotify'
  s.add_development_dependency 'rb-fsevent'
  s.add_development_dependency 'rb-fchange'
  s.add_development_dependency 'artifice'
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'database_cleaner'
end

