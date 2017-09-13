class CreateRecipeLists < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_lists do |t|
      t.string :allergies, array: true, default: []
      t.timestamps
    end
  end
end
