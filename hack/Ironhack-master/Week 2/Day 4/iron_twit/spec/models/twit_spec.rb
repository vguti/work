# spec/app_spec.rb
require File.expand_path '../../spec_helper.rb', __FILE__

describe Twit do
  describe ".body" do
    it "counts more than 2 blank space as 1" do
      twit = Twit.new("a  b b       c")
      expect(twit.body_size).to eq(7)
    end

    it "is valid with 140 chars or less" do
      twit = Twit.new("")
      expect(twit).to be_valid
    end

    it "is valid when under 141 chars" do
      twit = Twit.new("a" * 150)
      expect(twit).not_to be_valid
    end

    Twit::SWEARWORDS.each do |swearword|
      it "cannot contatin the word #{swearword}" do
        twit = Twit.new("#{swearword} you!")
        expect(twit).not_to be_valid
      end

      it "ignores the case of the swearword" do
        twit = Twit.new("#{swearword.upcase} you!")
        expect(twit).not_to be_valid
      end
    end

    Twit::PC_POLICE.each do |word|
      it "cannot contatin the word #{word}" do
        twit = Twit.new("#{word} you!")
        expect(twit).not_to be_valid
      end
    end
  end
end