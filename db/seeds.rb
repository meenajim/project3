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

Family.destroy_all
f1 = Family.create(:name =>'Jackson', :address=>'1 Melrose Place, Surry Hills, NSW 2000')
f2 = Family.create(:name =>'Brown', :address=>'17 Beverly Hills, Washington, NSW 1234')
f3 = Family.create(:name =>'Myers', :address=>'9 Victoria place, Victoria, NSW 3322')
f4 = Family.create(:name =>'Atkins', :address=>'12 Belford pl, Bellington, NSW 1235')
f5 = Family.create(:name =>'Beale', :address=>'123 Standon avenue, Startford, NSW 1211')

# Table name: users
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

User.destroy_all
u1 = User.create(:name => 'Jeff Jackson', :password => 'Jeff', :usercategory_id => '1', :dob => '10-01-1975', :email => 'jeff@jackson.com', :family_id =>'5', :user_type=>'user')
u2 = User.create(:name => 'Trisha Jackson', :password => 'Trisha', :usercategory_id => '2', :dob => '10-01-1978', :email => 'trisha@jackson.com', :family_id =>'5', :user_type=>'user')
u3 = User.create(:name => 'Julie Jackson', :password => 'Julie', :usercategory_id => '5', :dob => '01-05-2005', :email => 'julie@jackson.com', :family_id =>'5', :user_type=>'user')
u4 = User.create(:name => 'Joshua Jackson', :password => 'Joshua', :usercategory_id => '6', :dob => '30-06-2010', :email => 'joshua@jackson.com', :family_id =>'5', :user_type=>'user')
u5 = User.create(:name => 'Eleni Atkins', :password => 'Eleni', :usercategory_id => '3', :dob => '04-10-1995', :email => 'eleni@atkins.com', :family_id =>'8', :user_type=>'user')
u6 = User.create(:name => 'Chelsea Atkins', :password => 'Chelsea', :usercategory_id => '5', :dob => '15-11-2015', :email => 'chelsea@atkins.com', :family_id =>'8', :user_type=>'user')
u7 = User.create(:name => 'Robert Myers', :password => 'Robert', :usercategory_id => '1', :dob => '20-10-1950', :email => 'robert@myers.com', :family_id =>'7', :user_type=>'user')
u8 = User.create(:name => 'Ruby Myers', :password => 'Ruby', :usercategory_id => '2', :dob => '22-12-1975', :email => 'ruby@myers.com', :family_id =>'7', :user_type=>'user')
u9 = User.create(:name => 'Robinson Myers', :password => 'Robinson', :usercategory_id => '6', :dob => '12-12-2000', :email => 'robinson@myers.com', :family_id =>'7', :user_type=>'user')
u10 = User.create(:name => 'Jenny Beale', :password => 'Jenny', :usercategory_id => '2', :dob => '17-11-2000', :email => 'jenny@beale.com', :family_id =>'9', :user_type=>'user')
u11 = User.create(:name => 'Manager', :password => 'Manager', :usercategory_id => '1', :dob => '10-10-2000', :email => 'manager@manager.com',:family_id => '', :user_type => 'Admin' )

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

Servingguide.destroy_all
s1 = Servingguide.create(:usercategory_id =>'1', :age =>'50', :veg =>'6',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s2 = Servingguide.create(:usercategory_id =>'1', :age =>'70', :veg =>'6',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s3 = Servingguide.create(:usercategory_id =>'1', :age =>'71', :veg =>'5',:fruit =>'2',:grain =>'5', :meat =>'3',:milk =>'4',:additional_serve =>'3')
s4 = Servingguide.create(:usercategory_id =>'2', :age =>'50', :veg =>'5',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s5 = Servingguide.create(:usercategory_id =>'2', :age =>'70', :veg =>'5',:fruit =>'2',:grain =>'4', :meat =>'2',:milk =>'4',:additional_serve =>'3')
s6 = Servingguide.create(:usercategory_id =>'2', :age =>'71', :veg =>'5',:fruit =>'2',:grain =>'3', :meat =>'2',:milk =>'4',:additional_serve =>'2')
s7 = Servingguide.create(:usercategory_id =>'3', :age =>'', :veg =>'5',:fruit =>'2',:grain =>'9', :meat =>'4',:milk =>'3',:additional_serve =>'3')
s8 = Servingguide.create(:usercategory_id =>'4', :age =>'', :veg =>'8',:fruit =>'2',:grain =>'9', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s9 = Servingguide.create(:usercategory_id =>'5', :age =>'', :veg =>'6',:fruit =>'2',:grain =>'7', :meat =>'3',:milk =>'4',:additional_serve =>'5')
s10 = Servingguide.create(:usercategory_id =>'6', :age =>'', :veg =>'5',:fruit =>'2',:grain =>'7', :meat =>'3',:milk =>'4',:additional_serve =>'3')

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

Mealplan.destroy_all
m1 = Mealplan.create(:date => '10-05-2018', :user_id => '3',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m2 = Mealplan.create(:date => '10-05-2018', :user_id => '3',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m3 = Mealplan.create(:date => '10-05-2018', :user_id => '3',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m4 = Mealplan.create(:date => '10-05-2018', :user_id => '3',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m5 = Mealplan.create(:date => '11-05-2018', :user_id => '3',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m6 = Mealplan.create(:date => '11-05-2018', :user_id => '3',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m7 = Mealplan.create(:date => '12-05-2018', :user_id => '3',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m8 = Mealplan.create(:date => '12-05-2018', :user_id => '3',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m9 = Mealplan.create(:date => '12-05-2018', :user_id => '3',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')



# == Schema Information
#
# Table name: usercategories
#
#  id         :integer          not null, primary key
#  category   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Usercategory.destroy_all
# uc1 = Usercategory.create(:category =>'')
# uc2 = Usercategory.create(:category =>'')
# uc3 = Usercategory.create(:category =>'')
# uc4 = Usercategory.create(:category =>'')
# uc5 = Usercategory.create(:category =>'')
# uc6 = Usercategory.create(:category =>'')
# uc7 = Usercategory.create(:category =>'')
# uc8 = Usercategory.create(:category =>'')
# uc9 = Usercategory.create(:category =>'')
# uc10 = Usercategory.create(:category =>'')


# Linking the tables
# Family links to users
f1.users << u1 << u2 << u3 << u4
f3.users << u7 << u8 << u9
f4.users << u5 << u6
f5.users << u10
