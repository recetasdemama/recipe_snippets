require 'polyglot'
require 'treetop'

require File.expand_path('../ingredient_line.treetop', __FILE__)


module RecipeSnippets
  class Ingredient
    
    attr_accessor :amount, :name
    
    def initialize(html)
      parser = IngredientLineParser.new

      tree = parser.parse(html)
      
      if tree
        self.amount = tree.amount
        self.name = tree.name
      else
        puts parser.failure_reason
        puts parser.failure_line
        puts parser.failure_column
      end
    end
    
  end
end