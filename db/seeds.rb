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
u1 = User.create(:name => 'Jeff Jackson', :password => 'Jeff', :dob => '10-01-1975', :email => 'jeff@jackson.com', :user_type=>'user', :activated=>'t')
u2 = User.create(:name => 'Trisha Jackson', :password => 'Trisha', :dob => '10-01-1978', :email => 'trisha@jackson.com', :user_type=>'user', :activated=>'t')
u3 = User.create(:name => 'Julie Jackson', :password => 'Julie', :dob => '01-05-2005', :email => 'julie@jackson.com', :user_type=>'user', :activated=>'t')
u4 = User.create(:name => 'Joshua Jackson', :password => 'Joshua', :dob => '30-06-2010', :email => 'joshua@jackson.com', :user_type=>'user', :activated=>'t')
u5 = User.create(:name => 'Eleni Atkins', :password => 'Eleni', :dob => '04-10-1995', :email => 'eleni@atkins.com', :user_type=>'user', :activated=>'t')
u6 = User.create(:name => 'Chelsea Atkins', :password => 'Chelsea', :dob => '15-11-2015', :email => 'chelsea@atkins.com', :user_type=>'user', :activated=>'t')
u7 = User.create(:name => 'Robert Myers', :password => 'Robert', :dob => '20-10-1950', :email => 'robert@myers.com', :user_type=>'user', :activated=>'t')
u8 = User.create(:name => 'Ruby Myers', :password => 'Ruby', :dob => '22-12-1975', :email => 'ruby@myers.com', :user_type=>'user', :activated=>'t')
u9 = User.create(:name => 'Robinson Myers', :password => 'Robinson', :dob => '12-12-2000', :email => 'robinson@myers.com', :user_type=>'user', :activated=>'t')
u10 = User.create(:name => 'Jenny Beale', :password => 'Jenny', :dob => '17-11-2000', :email => 'jenny@beale.com', :user_type=>'user', :activated=>'t')
u11 = User.create(:name => 'Manager', :password => 'Manager', :dob => '10-10-2000', :email => 'manager@manager.com', :user_type => 'Admin' , :activated=>'t')

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
m1 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m2 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m3 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m4 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m5 = Mealplan.create(:date => '11-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m6 = Mealplan.create(:date => '11-05-2018',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m7 = Mealplan.create(:date => '12-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m8 = Mealplan.create(:date => '12-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m9 = Mealplan.create(:date => '12-05-2018',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')
m10 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m11 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m12 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m13 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m14 = Mealplan.create(:date => '11-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m15 = Mealplan.create(:date => '11-05-2018',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m16 = Mealplan.create(:date => '12-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m17 = Mealplan.create(:date => '14-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m18 = Mealplan.create(:date => '14-05-2018',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')
m19 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Breakfast', :veg => '1', :fruit =>'2', :grain =>'1',:meat =>'1', :milk =>'1', :additional_serve =>'')
m20 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'')
m21 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Snack', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'', :additional_serve =>'1')
m22 = Mealplan.create(:date => '10-05-2018',:mealtype => 'Dinner', :veg => '', :fruit =>'1', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m23 = Mealplan.create(:date => '15-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'1', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m24 = Mealplan.create(:date => '15-05-2018',:mealtype => 'Lunch', :veg => '', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'')
m25 = Mealplan.create(:date => '16-05-2018',:mealtype => 'Breakfast', :veg => '', :fruit =>'', :grain =>'',:meat =>'', :milk =>'1', :additional_serve =>'')
m26 = Mealplan.create(:date => '16-05-2018',:mealtype => 'Lunch', :veg => '1', :fruit =>'1', :grain =>'',:meat =>'2', :milk =>'', :additional_serve =>'')
m27 = Mealplan.create(:date => '16-05-2018',:mealtype => 'Dinner', :veg => '1', :fruit =>'', :grain =>'1',:meat =>'2', :milk =>'', :additional_serve =>'2')



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
uc1 = Usercategory.create(:category =>'Man')
uc2 = Usercategory.create(:category =>'Woman')
uc3 = Usercategory.create(:category =>'Pregnant')
uc4 = Usercategory.create(:category =>'Lactating')
uc5 = Usercategory.create(:category =>'Boy')
uc6 = Usercategory.create(:category =>'Girl')

# Linking the tables
# Family links to users
f1.users << u1 << u2 << u3 << u4
f3.users << u7 << u8 << u9
f4.users << u5 << u6
f5.users << u10


#Usercategory link to mealplans
uc1.servingguides << s1 << s2 << s3
uc2.servingguides << s4 << s5 << s6
uc3.servingguides << s7
uc4.servingguides << s8
uc5.servingguides << s9
uc6.servingguides << s10


#Mealplan link to users
u1.mealplans << m1 << m2 << m3 << m4 << m5 << m6 << m7 << m8 << m9
u2.mealplans << m10 << m11 << m12 << m13 << m14 << m15 << m16 << m17 << m18
u3.mealplans << m19 << m20 << m21 << m22 << m23 << m24 << m25 << m26 << m27

#User link to usercategories
uc1.users << u1 << u7 << u9
uc2.users << u2 << u5 << u8
uc3.users << u10
uc5.users << u4
uc6.users << u3 << u6
