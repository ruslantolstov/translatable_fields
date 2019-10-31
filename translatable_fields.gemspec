lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "translatable_fields/version"

Gem::Specification.new do |spec|
  spec.name          = "translatable_fields"
  spec.version       = TranslatableFields::VERSION
  spec.authors       = ["Yevhenii Halenko", "Oleksii Tokarchuk", "Ruslan Tolstov"]
  spec.email         = ["ruslan.tolstov.ua@gmail.com"]

  spec.summary       = "Translate your fields in ActiveRecord."
  spec.description   = "translatable_fields"
  spec.homepage      = "https://github.com/ruslantolstov/translatable_fields"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 4.0.0"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "simplecov"
end
