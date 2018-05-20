class UserMailer < ApplicationMailer
  default from: "admin@nutritracker.com"

def welcome(user)
  @user = user #@user will be whatever user we pass in to the 'welcome' method
  mail( :to => @user.email, :subject => "Welcome to Nutri Tracker!", :cc => "admin@nutritracker.com" )
end
end
