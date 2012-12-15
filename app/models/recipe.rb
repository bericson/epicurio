class Recipe < ActiveRecord::Base

  attr_accessible :author, :summary, :cook_time, :ingredients, :name, :prep_time,
                  :preparation, :servings, :image, :image_name, :remote_image_url, :tag_list

  validates_presence_of :name, :author, :ingredients

  mount_uploader :image, ImageUploader

  acts_as_taggable

  has_many :comments, as: :commentable

  #has_many :ingredients, as: :itemable, dependent: :destroy

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

end
