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
u1 = User.create(:name => 'Jeff Jackson', :password => 'Jeff', :usercategory_id => '1', :dob => '10-01-1975', :email => 'jeff@jackson.com', :family_id =>'5', :user_type=>'user', :activated=>'t')
u2 = User.create(:name => 'Trisha Jackson', :password => 'Trisha', :usercategory_id => '2', :dob => '10-01-1978', :email => 'trisha@jackson.com', :family_id =>'5', :user_type=>'user', :activated=>'f')
u3 = User.create(:name => 'Julie Jackson', :password => 'Julie', :usercategory_id => '5', :dob => '01-05-2005', :email => 'julie@jackson.com', :family_id =>'5', :user_type=>'user', :activated=>'f')
u4 = User.create(:name => 'Joshua Jackson', :password => 'Joshua', :usercategory_id => '6', :dob => '30-06-2010', :email => 'joshua@jackson.com', :family_id =>'5', :user_type=>'user', :activated=>'f')
u5 = User.create(:name => 'Eleni Atkins', :password => 'Eleni', :usercategory_id => '3', :dob => '04-10-1995', :email => 'eleni@atkins.com', :family_id =>'8', :user_type=>'user', :activated=>'f')
u6 = User.create(:name => 'Chelsea Atkins', :password => 'Chelsea', :usercategory_id => '5', :dob => '15-11-2015', :email => 'chelsea@atkins.com', :family_id =>'8', :user_type=>'user', :activated=>'f')
u7 = User.create(:name => 'Robert Myers', :password => 'Robert', :usercategory_id => '1', :dob => '20-10-1950', :email => 'robert@myers.com', :family_id =>'7', :user_type=>'user', :activated=>'f')
u8 = User.create(:name => 'Ruby Myers', :password => 'Ruby', :usercategory_id => '2', :dob => '22-12-1975', :email => 'ruby@myers.com', :family_id =>'7', :user_type=>'user', :activated=>'f')
u9 = User.create(:name => 'Robinson Myers', :password => 'Robinson', :usercategory_id => '6', :dob => '12-12-2000', :email => 'robinson@myers.com', :family_id =>'7', :user_type=>'user', :activated=>'f')
u10 = User.create(:name => 'Jenny Beale', :password => 'Jenny', :usercategory_id => '2', :dob => '17-11-2000', :email => 'jenny@beale.com', :family_id =>'9', :user_type=>'user', :activated=>'f')
u11 = User.create(:name => 'Manager', :password => 'Manager', :usercategory_id => '1', :dob => '10-10-2000', :email => 'manager@manager.com',:family_id => '999', :user_type => 'Admin' , :activated=>'t')

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
s1 = Servingguide.create(:age =>'19', :veg =>'6',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s2 = Servingguide.create(:age =>'51', :veg =>'6',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s3 = Servingguide.create(:age =>'70', :veg =>'5',:fruit =>'2',:grain =>'5', :meat =>'3',:milk =>'4',:additional_serve =>'3')
s4 = Servingguide.create(:age =>'19', :veg =>'5',:fruit =>'2',:grain =>'6', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s5 = Servingguide.create(:age =>'51', :veg =>'5',:fruit =>'2',:grain =>'4', :meat =>'2',:milk =>'4',:additional_serve =>'3')
s6 = Servingguide.create(:age =>'70', :veg =>'5',:fruit =>'2',:grain =>'3', :meat =>'2',:milk =>'4',:additional_serve =>'2')
s7 = Servingguide.create(:age =>'0', :veg =>'5',:fruit =>'2',:grain =>'9', :meat =>'4',:milk =>'3',:additional_serve =>'3')
s8 = Servingguide.create(:age =>'0', :veg =>'8',:fruit =>'2',:grain =>'9', :meat =>'3',:milk =>'3',:additional_serve =>'3')
s9 = Servingguide.create(:age =>'0', :veg =>'6',:fruit =>'2',:grain =>'7', :meat =>'3',:milk =>'4',:additional_serve =>'5')
s10 = Servingguide.create(:age =>'0', :veg =>'5',:fruit =>'2',:grain =>'7', :meat =>'3',:milk =>'4',:additional_serve =>'3')

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
m10 = Mealplan.create(:date => '10-05-2018', :user_id => '4',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m11 = Mealplan.create(:date => '10-05-2018', :user_id => '4',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m12 = Mealplan.create(:date => '10-05-2018', :user_id => '4',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m13 = Mealplan.create(:date => '10-05-2018', :user_id => '4',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m14 = Mealplan.create(:date => '11-05-2018', :user_id => '4',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m15 = Mealplan.create(:date => '11-05-2018', :user_id => '4',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m16 = Mealplan.create(:date => '12-05-2018', :user_id => '4',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m17 = Mealplan.create(:date => '14-05-2018', :user_id => '4',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m18 = Mealplan.create(:date => '14-05-2018', :user_id => '4',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')
m19 = Mealplan.create(:date => '10-05-2018', :user_id => '5',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m20 = Mealplan.create(:date => '10-05-2018', :user_id => '5',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m21 = Mealplan.create(:date => '10-05-2018', :user_id => '5',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m22 = Mealplan.create(:date => '10-05-2018', :user_id => '5',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m23 = Mealplan.create(:date => '15-05-2018', :user_id => '5',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m24 = Mealplan.create(:date => '15-05-2018', :user_id => '5',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m25 = Mealplan.create(:date => '16-05-2018', :user_id => '5',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m26 = Mealplan.create(:date => '16-05-2018', :user_id => '5',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m27 = Mealplan.create(:date => '16-05-2018', :user_id => '5',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')



# == Schema Information
#
# Table name: usercategories
#
#  id         :integer          not null, primary key
#  category   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
Usercategory.destroy_all
uc1 = Usercategory.create(:category =>'Pregnant')
uc2 = Usercategory.create(:category =>'Lactating')
uc3 = Usercategory.create(:category =>'Men')
uc4 = Usercategory.create(:category =>'Women')
uc5 = Usercategory.create(:category =>'Girl')
uc6 = Usercategory.create(:category =>'Boy')

# Linking the tables
# Family links to users
f1.users << u1 << u2 << u3 << u4
f3.users << u7 << u8 << u9
f4.users << u5 << u6
f5.users << u10

# Mealplan links to usercategories
# s1.usercategories << uc1
# s2.usercategories << uc1
# s5.usercategories << uc2
# s7.usercategories << uc3

#Usercategory link to mealplans
uc1.servingguides << s1 << s2 << s3
uc2.servingguides << s4 << s5 << s6
uc3.servingguides << s7
uc4.servingguides << s8
uc5.servingguides << s9
uc6.servingguides << s10

#Usercatagory to users
# uc1.users << u1 << u7 << u11
# uc2.users << u2 << u8 << u10
# uc5.users << u3 << u6
# uc3.users << u5
# uc6.users << u9 << u4
