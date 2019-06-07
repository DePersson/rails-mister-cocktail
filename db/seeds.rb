require 'json'
require 'open-uri'
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = open(url).read

ingredients = JSON.parse(json)

ingredients.first[1].each do |ingredient|
  p ingredient['strIngredient1']
  Ingredient.create!(name: ingredient['strIngredient1'])
end
