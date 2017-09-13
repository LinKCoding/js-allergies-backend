class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :directions
      t.string :ingredients, array: true, default: []
      t.integer :recipe_list_id
      t.timestamps
    end
  end
end
