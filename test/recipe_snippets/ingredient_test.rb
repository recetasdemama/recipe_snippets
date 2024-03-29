# encoding: UTF-8

require File.expand_path('../../minitest_helper', __FILE__)

module RecipeSnippets
  describe Ingredient do
    
    describe "parsing" do
      test_ingredient_parse "100 gramos de queso", "100 gramos", "queso"    
      test_ingredient_parse "100 g de queso", "100 g", "queso"    
      test_ingredient_parse "100g de queso", "100g", "queso"
      test_ingredient_parse "30 ml de aceite de girasol", "30 ml", "aceite de girasol"
      test_ingredient_parse "1 berenjena", "1", "berenjena"
      test_ingredient_parse "sal", "", "sal"
      test_ingredient_parse "aceite de oliva", "", "aceite de oliva"
      test_ingredient_parse "zumo de un limón", "un", "limón"
      test_ingredient_parse "cáscara de limón", "", "limón"
      test_ingredient_parse "ralladura de naranja", "", "naranja"
      test_ingredient_parse "medio kilo de aceitunas", "medio kilo", "aceitunas"
      test_ingredient_parse "Unas rodajas de zanahoria", "", "zanahoria"
      test_ingredient_parse "1 lata de leche condensada", "1 lata", "leche condensada"
      test_ingredient_parse "1 lata pequeña de leche condensada", "1 lata", "leche condensada"
      test_ingredient_parse "500 ml de nata para montar", "500 ml", "nata para montar"
      test_ingredient_parse "6 huevos", "6", "huevos"
      test_ingredient_parse "un vasito de leche", "un vasito", "leche"
      test_ingredient_parse "1/2 litro de natillas caseras", "1/2 litro", "natillas caseras"
    end
    
    describe "rendering" do
      test_ingredient_render "100 gramos de queso", '<span class="ingredient"><span class="amount">100 gramos</span> de <span class="name">queso</span></span>'
      test_ingredient_render "sal", '<span class="ingredient"><span class="name">sal</span></span>'
      test_ingredient_render "zumo de un limón", '<span class="ingredient">zumo de <span class="amount">un</span> <span class="name">limón</span></span>'
      test_ingredient_render "un kilo de aceitunas", '<span class="ingredient"><span class="amount">un kilo</span> de <span class="name">aceitunas</span></span>'
      test_ingredient_render "una aceituna", '<span class="ingredient"><span class="amount">una</span> <span class="name">aceituna</span></span>'
    end
  end
end
