class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.decimal :ndb_no
      t.string  :shrt_desc
      t.decimal :water
      t.decimal :energ_kcal
      t.decimal :protein
      t.decimal :lipid_tot
      t.decimal :ash
      t.decimal :carbohydrt
      t.decimal :fiber_td
      t.decimal :sugar_tot
      t.decimal :calcium
      t.decimal :iron
      t.decimal :magnesium
      t.decimal :phosphorus
      t.decimal :potassium
      t.decimal :sodium
      t.decimal :zinc
      t.decimal :copper
      t.decimal :manganese
      t.decimal :selenium
      t.decimal :vit_c
      t.decimal :thiamin
      t.decimal :riboflavin
      t.decimal :niacin
      t.decimal :panto_acid
      t.decimal :vit_b6
      t.decimal :folate_tot
      t.decimal :folic_acid
      t.decimal :food_folate
      t.decimal :folate_dfe
      t.decimal :vit_b12
      t.decimal :vit_a_iu
      t.decimal :vit_a_rae
      t.decimal :retinol
      t.decimal :vit_e
      t.decimal :vit_k
      t.decimal :alpha_carot
      t.decimal :beta_carot
      t.decimal :beta_crypt
      t.decimal :lycopene
      t.decimal :lut_zea
      t.decimal :fa_sat
      t.decimal :fa_mono
      t.decimal :fa_poly
      t.decimal :cholesterl
      t.decimal :gmwt_1
      t.string  :gmwt_desc1
      t.decimal :gmwt_2
      t.string  :gmwt_desc2
      t.decimal :refuse_pct
      t.string  :name
      t.string  :unit_of_measure
      t.timestamps
    end
  end
end
