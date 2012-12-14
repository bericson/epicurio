class ChangeSummaryColumnType < ActiveRecord::Migration
  def self.up
    change_column :recipes, :summary, :text
    change_column :recipes, :preparation, :text
  end

  def self.down
    change_column :recipes, :summary, :string
    change_column :recipes, :preparation, :string
  end
end
