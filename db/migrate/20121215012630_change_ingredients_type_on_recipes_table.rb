class ChangeIngredientsTypeOnRecipesTable < ActiveRecord::Migration
    def self.up
      change_column :recipes, :ingredients, :text
    end

    def self.down
      change_column :recipes, :ingredients, :string
    end
  end
