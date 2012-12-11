class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.integer :servings
      t.time :prep_time
      t.time :cook_time
      t.string :author
      t.string :preparation

      t.timestamps
    end
  end
end
