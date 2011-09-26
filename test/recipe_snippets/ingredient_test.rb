# encoding: UTF-8

require File.expand_path('../../minitest_helper', __FILE__)

module RecipeSnippets
  describe Ingredient do
    
    describe "parsing" do
      it "parses 100 g de queso" do
        i = Ingredient.new("100 g de queso")
        i.amount.must_equal "100 g"
        i.name.must_equal "queso"
      end
      
      it "parses 1 berenjena" do
        i = Ingredient.new("1 berenjena")
        i.amount.must_equal "1"
        i.name.must_equal "berenjena"        
      end
      
      it "parses sal" do
        i = Ingredient.new("sal")
        i.amount.must_equal nil
        i.name.must_equal "sal"
      end
      
      it "parses 'aceite de oliva virgen'" do
        i = Ingredient.new("aceite de oliva virgen")
        i.amount.must_equal nil
        i.name.must_equal "aceite de oliva virgen"
      end
      
      it "parses 'zumo de un limón'" do
        i = Ingredient.new("zumo de un limón")
        i.amount.must_equal "un"
        i.name.must_equal "limón"
      end
      
    end
  end
end