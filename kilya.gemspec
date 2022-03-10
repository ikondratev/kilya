require 'English'
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new('>= 0')
  end
  s.rubygems_version = '2.7'
  s.required_ruby_version = '>=2.2'
  s.name = 'kilya'
  s.version = '0.0.2'
  s.executables << 'kilya'
  s.license = 'MIT'
  s.summary = 'Simple first Ruby gem'
  s.description = 'Class Kilya for test new gem.'
  s.authors = ['Ilya Kondratev']
  s.email = 'ilyafulleveline@gmail.com'
  s.homepage = 'https://github.com/ikondratev/kilya'
  s.files = `git ls-files`.split($RS)
end
