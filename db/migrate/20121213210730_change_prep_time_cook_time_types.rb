class ChangePrepTimeCookTimeTypes < ActiveRecord::Migration
  def self.up
    change_column :recipes, :prep_time, :string
    change_column :recipes, :cook_time, :string
  end

  def self.down
    change_column :recipes, :prep_time, :datetime
    change_column :recipes, :cook_time, :datetime
  end
end
