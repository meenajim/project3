# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  password_digest :string
#  usercategory_id :integer
#  dob             :date
#  email           :text
#  family_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_type       :text
#

class User < ApplicationRecord
  has_secure_password
  belongs_to :family, :optional => true
  has_many :mealplans
  belongs_to :usercategory, :optional =>true
  validates :email, :presence =>true, :uniqueness =>true

end
