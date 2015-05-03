Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY

  s.name = 'numbray'
  s.version = '0.0.1'

  s.author = 'Florian Hanke'
  s.email = 'florian.hanke+numbray@gmail.com'

  s.licenses = ['MIT']

  s.description = ''
  s.summary = ''

  s.files = Dir["lib/**/*.rb", "ext/numbray/numbray.c"]
  s.test_files = Dir["spec/**/*_spec.rb"]

  s.extensions << 'ext/numbray/extconf.rb'
end