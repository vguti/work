require_relative '../module/password.rb'

RSpec.describe PasswordChecker do

	let(:verification) {PasswordChecker.new("hola@email.com", "aW12#345678", "name", "domain")}

	it "The password must be longer than 7 characters" do
		expect(verification.check_password).to be(true)
	end

	# it "The password must contain at least 1 number" do
	# 	expect(verification.check_number("")).to be(false)
	# end

	it "The password must contain at least 1 number" do
		expect(verification.check_number).to be(true)
	end

	it "The password must contain at least 1 lowercase letter" do
		expect(verification.check_lowercase_letter).to be(true)
	end

	it "The password must contain at least 1 symbol" do
		expect(verification.check_symbol).to be(true)
	end

	it "The password must contain at least 1 uppercase letter" do
		expect(verification.check_uppercase_letter).to be(true)
	end

	it "he password must NOT contain neither the name nor the domain of the email" do
		expect(verification.check_niether_name_nor_domain).to be(false)
	end
end

# OK - The password must be longer than 7 characters
# OK - The password must contain at least 1 letter, 1 number and 1 symbol (e.g. "#", "%", etc)
# OK - The password must contain at least 1 uppercase and 1 lowercase letter
# The password must NOT contain neither the name nor the domain of the email.