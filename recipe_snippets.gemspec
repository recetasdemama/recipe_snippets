# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "recipe_snippets/version"

Gem::Specification.new do |s|
  s.name        = "recipe_snippets"
  s.version     = RecipeSnippets::VERSION
  s.authors     = ["fjuan"]
  s.email       = ["fjuan@recetasdemama.es"]
  s.homepage    = ""
  s.summary     = %q{Parse recipes in HTML and adds microformat to the ingredient list and the recipe instructions}
  s.description = %q{Given a spanish recipe written in HTML, this script will add microformat for easing the new Google search}

  s.rubyforge_project = "recipe_snippets"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "polyglot"
  s.add_runtime_dependency "treetop"
end
