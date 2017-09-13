# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
file = File.read('/Users/kesean/dev/Javascript/Projects/js-proj/js-allergies-backend/allergies/db/full_format_recipes.json')
test_list = JSON.parse(file)
byebug


recipe_list = RecipeList.create()
200.times do
    recipe = Recipe.new
    recipe.title = Faker::Food.dish
    recipe.url = ""
    recipe.thumbnail = ""
    recipe.recipe_list_id = recipe_list.id
    5.times do
      recipe.ingredients.push(Faker::Food.ingredient)
    end
    recipe.save
end
