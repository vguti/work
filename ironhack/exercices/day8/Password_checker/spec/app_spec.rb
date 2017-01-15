require_relative "../lib/app.rb"
require 'spec_helper'

RSpec.describe PasswordChecker do
  describe ".checkpassword" do
     it "ckecks if the password is correct" do
     user = PasswordChecker.new("mscenzano@gmail.com", "ironhack2?")
       expect(user.checkpassword).to eq(true)
     end
   end


   describe ".password_length" do
     it "ckecks the length of the password" do
     user = PasswordChecker.new("mscenzano@gmail.com", "iron?")
       expect(user.password_length).to eq(false)
     end
   end


  describe ".password_upcase" do
     it "ckecks if there is any upcase in the password" do
     user = PasswordChecker.new("mscenzano@gmail.com", "iRon?")
       expect(user.password_upcase).to eq(true)
     end
   end


  describe ".match_mail_pass" do
     it "ckecks if the mail matches the password" do
     user = PasswordChecker.new("mscenzano@gmail.com", "iron@gmail9?MM")
       expect(user.match_mail_pass).to eq(false)
     end
   end

end

