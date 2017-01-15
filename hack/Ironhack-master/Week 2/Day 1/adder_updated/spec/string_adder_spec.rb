require_relative '../app/string_adder.rb'

RSpec.describe StringAdder do
  let(:adder) { StringAdder }


  it ".add returns 0 for the empty string" do
    expect(adder.add("")).to eq(0)
  end

  it ".add returns 10 for '1,2,3,4'" do
    expect(adder.add('1,2,3,4')).to eq(10)
  end
end
