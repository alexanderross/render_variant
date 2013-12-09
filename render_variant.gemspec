$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "render_variant/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "render_variant"
  s.version     = RenderVariant::VERSION
  s.authors     = ["alex"]
  s.email       = ["alex@avvo.com"]
  s.homepage    = "http://github.com/alexanderross/render_variant"
  s.summary     = "Additional ActionView render functionality"
  s.description = "Addition of a :variant argument to ActionView's render function, allowing the presentation of an object in multiple variants."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"

  s.add_development_dependency "sqlite3"
end
