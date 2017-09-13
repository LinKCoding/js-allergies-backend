# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# file_path = File.absolute_path('full_format_recipes.json')
# file = File.read(file_path)
# test_list = JSON.parse(file)
recipe_file = File.read(File.join(File.dirname(__FILE__), 'full_format_recipes.json'))
parsed_recipes = JSON.parse(recipe_file)


recipe_list = RecipeList.create()
parsed_recipes.each do |recipe|
  if !recipe.empty?
    db_recipe = Recipe.new
    db_recipe.title = recipe["title"]
    db_recipe.directions = recipe["directions"]
    db_recipe.ingredients = recipe["ingredients"]
    db_recipe.ingredients.map { |ingredient| ingredient.delete! '\\'  }
    db_recipe.directions.delete! '\\'
    db_recipe.recipe_list_id = recipe_list.id
    db_recipe.save
  end
end
