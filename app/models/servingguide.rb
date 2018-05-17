# == Schema Information
#
# Table name: servingguides
#
#  id               :integer          not null, primary key
#  usercategory_id  :integer
#  age              :integer
#  veg              :integer
#  fruit            :integer
#  grain            :integer
#  meat             :integer
#  milk             :integer
#  additional_serve :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Servingguide < ApplicationRecord
 has_many :usercategories

end
