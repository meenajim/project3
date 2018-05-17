# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  name       :text
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Family < ApplicationRecord
 has_many :users

end
