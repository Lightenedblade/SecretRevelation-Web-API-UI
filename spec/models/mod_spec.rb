require 'spec_helper'

describe Mod do
  before :each do
    FactoryGirl.create_list :mod, 20
  end

  describe "#five_most_popular" do
    it "returns 5 mods" do
      Mod.five_most_popular.count.should == 5
    end

    it "returns the most popular mods" do
      #is this crazy? ---|
      #                  v
      Mod.five_most_popular.should eq Mod.order('downloads DESC').limit(5)
    end
  end

  describe "#five_highest_rated" do
    it "returns 5 mods" do
      Mod.five_highest_rated.count.should == 5
    end

    it "returns the highest rated mods" do
      #is this crazy? ---|
      #                  v
      Mod.five_highest_rated.should eq Mod.order('rating DESC').limit(5)
    end
  end
end
