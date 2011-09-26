require File.expand_path('../../lib/recipe_snippets', __FILE__)

require "minitest/autorun"
require "minitest/spec"


def create_recipe(text)
  Recipe.new(text)
end