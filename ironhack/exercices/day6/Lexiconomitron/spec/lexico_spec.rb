require "rspec"
require_relative "../lib/lexico.rb"

describe Lexiconomitron do 
  before :each do
  	@lexi = Lexiconomitron.new
  end

  describe "#eat_t" do
    it "removes every letter t from the input" do
        expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#word_reverse" do
    it "returns an array with the reversed words" do
      expect(@lexi.word_reverse(["This", "is", "a", "sentence"])).to eq(["sihT", "si", "a", "ecnetnes"])
    end
  end
end