require_relative '../app/string_calc.rb'

RSpec.describe StringCalc do
  let(:calculator) { StringCalc.new("4,1,2,3") }

  it "uses the StringAdder class for addition" do
    allow(StringAdder).to receive(:add).with(anything).and_return(12)
    expect(calculator.add).to eq(12)
  end


  context "when input is the empty string" do
    let(:calculator) { StringCalc.new("") }

    it ".add, .counter and .reverse all return 0" do
      expect(calculator.add).to eq(0)
    end

    it ".counter returns 0" do
      expect(calculator.counter).to eq(0)
    end

    it "returns ''" do
      expect(calculator.reverse).to eq("")
    end
  end

  context "when input is 4,1,2,3" do
    let(:calculator) { StringCalc.new("4,1,2,3") }

    it ".add returns 10" do
      expect(calculator.add).to eq(10)
    end

    it ".counter returns 4" do
      expect(calculator.counter).to eq(4)
    end

    it "returns '3,2,1,4'" do
      expect(calculator.reverse).to eq("3,2,1,4")
    end
  end
end
