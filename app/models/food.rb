class Food < ActiveRecord::Base

  attr_accessible :ndb_no, :shrt_desc, :water, :energ_kcal, :protein,
                  :lipid_tot, :ash, :carbohydrt, :fiber_td, :sugar_tot,
                  :calcium, :iron, :magnesium, :phosphorus, :potassium,
                  :sodium, :zinc, :copper, :manganese, :selenium, :vit_c,
                  :thiamin, :riboflavin, :niacin, :panto_acid,  :vit_b6,
                  :folate_tot, :folic_acid, :food_folate, :folate_dfe,
                  :vit_b12, :vit_a_iu, :vit_a_rae, :retinol, :vit_e,
                  :vit_k, :alpha_carot, :beta_carot, :beta_crypt,
                  :lycopene, :lut_zea, :fa_sat, :fa_mono, :fa_poly,
                  :cholesterl, :gmwt_1, :gmwt_desc1, :gmwt_2, :gmwt_desc2,
                  :refuse_pct, :name, :unit_of_measure

  has_many :ingredients

  validates :ndb_no, presence: true, uniqueness: true
  #validates :price, presence: true, numericality: true

  #monetize :total_cents, :allow_nil => true
  #
  #def total_cents
  #  price.present? ? price : 0
  #end

end
