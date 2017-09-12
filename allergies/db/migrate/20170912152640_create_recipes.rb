class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :url
      t.string :thumbnail
      t.text :ingredients, array: true, default: []

      t.timestamps
    end
  end
end
