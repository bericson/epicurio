class Recipe < ActiveRecord::Base

  attr_accessible :author, :cook_time, :ingredients, :name, :prep_time, :preparation, :servings

  validates_presence_of :name, :author, :ingredients

  has_many :ingredients, as: :itemable, dependent: :destroy

  #monetize :total_cents
  #
  #def total_cents
  #  #line_items.sum(&:price)
  #  cart_total = 0
  #  line_items.each do |li|
  #    cart_total += li.price * li.quantity
  #  end
  #  return cart_total
  #end

  #mount_uploader :image, ImageUploader

end
