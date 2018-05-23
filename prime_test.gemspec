Gem::Specification.new do |s|
  s.name               = "prime_test"
  s.version            = "0.1.0"
  s.default_executable = "prime_test"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Calvin"]
  s.date = %q{2018-05-22}
  s.description = %q{Print n prime numbers as multiplicative table to terminal}
  s.email = %q{calvjd@gmail.com}
  s.require_paths = ['lib']
  s.files         = `git ls-files lib`.split("\n")
  s.test_files    = `git ls-files spec`.split("\n")
  s.executables = ['prime_test']
  s.homepage = %q{http://rubygems.org/gems/jc_prime_test}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Prime Test}
  s.licenses = ['MIT']

  s.add_development_dependency 'rspec', '~> 3.0', '>= 3.0.0'
end