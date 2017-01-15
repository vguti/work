require 'rspec'
require_relative '../lexiconomitron.rb'

RSpec.describe "Lexiconomitron" do
  describe "#eat_t" do
    it "returns an empty string when a T is passed" do
      expect(Lexiconomitron.new.eat_t("t")).to eq("")
    end

    it "returns the same string if there is no T" do
      expect(Lexiconomitron.new.eat_t("a")).to eq("a")
    end

    it "returns the same string without t or T" do
      expect(Lexiconomitron.new.eat_t("Time to code!")).to eq("ime o code!")
    end
  end

  describe "#reverse_array_words" do
    it "returns an array with the reversed words" do
      expect(Lexiconomitron.new.reverse_array_words(["This", "is", "a", "sentence"])).to eq(["sihT", "si", "a", "ecnetnes"])
    end
  end

  describe "#first_and_last_word" do
    it "returns the first and last word in the array" do
      expect(Lexiconomitron.new.first_and_last_word(["This", "is", "a", "sentence"])).to eq(["This", "sentence"])
    end
  end

  describe "#shazam" do
    it "returns the first and last word from the array, without the letter T (lowercase and uppercase)" do
      expect(Lexiconomitron.new.shazam(["This", "is", "a", "sentence"])).to eq(["sih", "ecnenes"])
    end
  end

  describe "#three_or_less" do
    it "returns an array with the words with a length three or less" do
      expect(Lexiconomitron.new.three_or_less(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end
  end

  describe "#oompa_loompa" do
    it "returns an array with words with length three or less and without T's" do
      expect(Lexiconomitron.new.oompa_loompa(["let", "me", "tell", "you", "an", "story"])).to eq(["le", "me", "you", "an"])
    end
  end

  describe "#oompa_loompa" do
    it "returns an array with words with length three or less and without T's" do
      expect(Lexiconomitron.new.oompa_loompa(["let", "me", "tell", "you", "an", "story"])).to eq(["le", "me", "you", "an"])
    end
  end

  describe "#oompa_loompa" do
    it "returns an array with words with length three or less and without T's" do
      expect(Lexiconomitron.new.oompa_loompas(["tt"])).to eq(["are you insane?"])
    end
  end

  describe "#oompa_loompa" do
    it "returns an array with words with length three or less and without T's" do
      expect(Lexiconomitron.new.oompa_loompas(["ta"])).to eq([""])
    end
  end
end