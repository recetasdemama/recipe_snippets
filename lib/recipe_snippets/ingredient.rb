require 'polyglot'
require 'treetop'

require File.expand_path('../ingredient_line.treetop', __FILE__)


module RecipeSnippets
  class Ingredient
    
    attr_accessor :html, :amount, :name
    
    def initialize(text)
      self.html = text
      parser = IngredientLineParser.new

      tree = parser.parse(html)
            
      self.amount = tree.amount
      self.name = tree.name
    end
    
    def render
      result = html
      result[amount] = "<span class=\"amount\">#{amount}</span>" if amount.length > 0
      result[name] = "<span class=\"name\">#{name}</span>"
      
      "<span class=\"ingredient\">#{result}</span>"
    end
    
  end
end