# encoding: UTF-8

require File.expand_path('../../minitest_helper', __FILE__)

module RecipeSnippets
  describe Ingredient do
    
    describe "parsing" do
      it "parses 100 gramos de queso" do
        i = Ingredient.new("100 gramos de queso")
        i.amount.must_equal "100 gramos"
        i.name.must_equal "queso"
      end
      
      it "parses 100g de queso" do
        i = Ingredient.new("100g de queso")
        i.amount.must_equal "100g"
        i.name.must_equal "queso"
      end
      
      it "parses 30 ml de aceite de girasol" do
        i = Ingredient.new("30 ml de aceite de girasol")
        i.amount.must_equal "30 ml"
        i.name.must_equal "aceite de girasol"
      end
      
      it "parses 1 berenjena" do
        i = Ingredient.new("1 berenjena")
        i.amount.must_equal "1"
        i.name.must_equal "berenjena"        
      end
     
      it "parses sal" do
        i = Ingredient.new("sal")
        i.amount.must_equal ""
        i.name.must_equal "sal"
      end

      it "parses 'aceite de oliva virgen'" do
        i = Ingredient.new("aceite de oliva virgen")
        i.amount.must_equal ""
        i.name.must_equal "aceite de oliva virgen"
      end

      it "parses 'zumo de un limón'" do
        i = Ingredient.new("zumo de un limón")
        i.amount.must_equal "un"
        i.name.must_equal "limón"
      end
      
      it "parses 'cáscara de limón'" do
        i = Ingredient.new("cáscara de limón")
        i.amount.must_equal ""
        i.name.must_equal "limón"
      end
      
      it "parses 'ralladura de naranja'" do
        i = Ingredient.new("ralladura de naranja")
        i.amount.must_equal ""
        i.name.must_equal "naranja"
      end

    end
  end
end