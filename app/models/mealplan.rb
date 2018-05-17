# == Schema Information
#
# Table name: mealplans
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  date             :date
#  mealtype         :text
#  veg              :integer
#  fruit            :integer
#  grain            :integer
#  meat             :integer
#  milk             :integer
#  additional_serve :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Mealplan < ApplicationRecord
  belongs_to :user

end
