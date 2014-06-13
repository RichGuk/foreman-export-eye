# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "foreman-export-eye"
  spec.version       = "0.0.1"
  spec.authors       = ["Rich Grundy"]
  spec.email         = ["rich@stinkyink.com"]
  spec.summary       = %q{Export Foreman Procfile to Eye config}
  spec.description   = %q{Exports Foreman Procfile format to Eye config format}
  spec.homepage      = "https://github.com/RichGuk/foreman-export-eye"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10"
end
