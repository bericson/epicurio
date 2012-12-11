class ConvertIngredientsToPolymorhpic < ActiveRecord::Migration
  def up
    add_column     :ingredients, :itemable_type, :string
    rename_column  :ingredients, :recipe_id, :itemable_id
    add_index      :ingredients, [:itemable_id, :itemable_type]
  end

  def down
    remove_column  :ingredients, :itemable_type
    remove_column  :ingredients, :itemable_id, :recipe_id
    remove_index   :ingredients,
                   :index_ingredients_on_itemable_id_and_itemable_type
  end
end