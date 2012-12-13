class AddImageNameToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :image_name, :string
    add_column :recipes, :remote_image_url, :string
  end
end
