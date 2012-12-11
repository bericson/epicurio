class Recipe < ActiveRecord::Base

  attr_accessible :author, :cook_time, :ingredients, :name, :prep_time, :preparation, :servings

  #validates_presence_of :name, :author, :ingredients

  #has_many :ingredients
  #belongs_to :itemable, polymorphic: true

  #mount_uploader :image, ImageUploader

end
