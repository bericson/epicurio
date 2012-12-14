class AddSummaryToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :summary, :string
  end
end
