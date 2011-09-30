require File.expand_path('../../lib/recipe_snippets', __FILE__)

require "minitest/autorun"
require "minitest/spec"


def create_recipe(text)
  Recipe.new(text)
end

def test_ingredient_parse(html, amount, name)
  it "parses #{html}" do
    i = RecipeSnippets::Ingredient.new(html)
    i.amount.must_equal amount
    i.name.must_equal name
  end
end

def test_ingredient_render(text, html)
  it "renders #{text}" do
    i = RecipeSnippets::Ingredient.new(text)
    i.render.must_equal html
  end
end