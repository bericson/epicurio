# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#puts 'CREATING ROLES'
#Role.create([
#              { :name => 'admin' },
#              { :name => 'user' },
#              { :name => 'member' }
#            ], :without_protection => true)
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'First User', :email => 'benihana@hotmail.com', :password => 'shinyshoes', :password_confirmation => 'shinyshoes'
#puts 'New user created: ' << user.name
#user2 = User.create! :name => 'Second User', :email => 'benbjammin@gmail.com', :password => 'shinyshoes', :password_confirmation => 'shinyshoes'
#puts 'New user created: ' << user2.name
#user.add_role :admin
#user2.add_role :member

#require 'csv'
#CSV.foreach("db/seeds/usda-nutrition-data.csv", {headers: true}) do |row|
#  Food.create({
#              :ndb_no => row[0],
#              :shrt_desc => row[1],
#              :water => row[2],
#              :energ_kcal => row[3],
#              :protein => row[4],
#              :lipid_tot => row[5],
#              :ash => row[6],
#              :carbohydrt => row[7],
#              :fiber_td => row[8],
#              :sugar_tot => row[9],
#              :calcium => row[10],
#              :iron => row[11],
#              :magnesium => row[12],
#              :phosphorus => row[13],
#              :potassium => row[14],
#              :sodium => row[15],
#              :zinc => row[16],
#              :copper => row[17],
#              :manganese => row[18],
#              :selenium => row[19],
#              :vit_c => row[20],
#              :thiamin => row[21],
#              :riboflavin => row[22],
#              :niacin => row[23],
#              :panto_acid => row[24],
#              :vit_b6 => row[25],
#              :folate_tot => row[26],
#              :folic_acid => row[27],
#              :food_folate => row[28],
#              :folate_dfe => row[29],
#              :vit_b12 => row[30],
#              :vit_a_iu => row[31],
#              :vit_a_rae => row[32],
#              :retinol => row[33],
#              :vit_e => row[34],
#              :vit_k => row[35],
#              :alpha_carot => row[36],
#              :beta_carot => row[37],
#              :beta_crypt => row[38],
#              :lycopene => row[39],
#              :lut_zea => row[40],
#              :fa_sat => row[41],
#              :fa_mono => row[42],
#              :fa_poly => row[43],
#              :cholesterl => row[44],
#              :gmwt_1 => row[45],
#              :gmwt_desc1 => row[46],
#              :gmwt_2 => row[47],
#              :gmwt_desc2 => row[48],
#              :refuse_pct => row[49],
#              :name => row[50],
#              :unit_of_measure => row[51]
#              })
#end