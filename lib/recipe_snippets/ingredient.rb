require 'polyglot'
require 'treetop'

require File.expand_path('../ingredient_line.treetop', __FILE__)

parser = IngredientLineParser.new


module RecipeSnippets
  class Ingredient
    
    attr_accessor :amount, :name
    
    def initialize(html)
      if can_split?(html, "de un")
        self.amount = "un"
        self.name = html.split("de un").last.strip
      elsif can_split?(html, "de")
        get_amount_and_name(html.split("de"))
      elsif can_split?(html, " ")
        get_amount_and_name(html.split)
      else
        self.name = html
      end
    
    end

    def get_amount_and_name(split)
      self.amount = split.first.strip
      self.name = split.last.strip
    end
    
    def can_split?(html, separator)
      html[separator] unless html == "aceite de oliva virgen"
    end
    
    
    
  end
end