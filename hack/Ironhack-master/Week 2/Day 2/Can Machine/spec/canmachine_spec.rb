require_relative "../app/canmachine.rb"

RSpec.describe CanMachine do
	it "give cans" do
		expect(machine.dispense).to be_a_kind_of(Can)
	end

	it "checks balance for enough amount" do
		expect(machine.check_balance?).to be_truthy
	end

	it "checks stock" do
		expect(machine.enought_stock?).to be_truthy
	end

	it "counts stocked cans" do
		expect(machine.can_stock).to be_greater_than(0)
	end

	it "should start with no cans" do
		expect(CanMachine.new.cans).to be(0)
	end

	it "should start with maximum_stock of 10" do
		expect(CanMachine.new.maximum_stock).to be(10)
	end

	it "ask if the CanMachine is plugged" do
		expect(machine.plugged?).to be_truthy
	end

	it "should have change" do
		expect(machine.change?).to be_greater_than(100)
	end

	it "can be filled up to stock" do 
		expect(machine.cans).to be(0)
		machine.fill_up
		expect(machine.cans).to eq(machine.maximum_stock)
	end
end