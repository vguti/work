require_relative "../app/lexiconomitron.rb"

RSpec.describe Lexiconomitron do
  # before each test the code from lines 5 to 7 is executed
  before(:each) do
    @lexi = Lexiconomitron.new
  end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great time!")).to eq("grea ime!")
    end

    it "removes every letter t from the reversed input" do
      expect(@lexi.shazam("This”, “is”, “a”, “boring”, “test")).to eq ("sih", "se")
    end
  end
end