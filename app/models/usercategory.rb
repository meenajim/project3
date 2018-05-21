# == Schema Information
#
# Table name: usercategories
#
#  id         :integer          not null, primary key
#  category   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Usercategory < ApplicationRecord
has_many :servingguide#, :optional =>true
has_many :users
end
