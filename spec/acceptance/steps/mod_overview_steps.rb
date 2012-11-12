step "the following mod categories:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.create :category, hash
  end
end

step "the following mods:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.build :mod do |mod|
      mod.attributes = hash
      mod.id = hash[:id]
      mod.save
    end
  end
end

step "I visit the home page" do
 visit('/')
end

step "I should see the five most popular mods links:" do |table|
  count = 0

  table.hashes.each do |hash|
    binding.pry
    page.should have_xpath %Q^//*[@class='five_most_popular']//a[@href="#{hash['path']}"]^, :text => hash['text']#, :count => 5
    count += 1
  end

  count.should == 5
end

step "I should see the five highest rated mods links" do
  links_array = find(".highest_rated").all("a")
  links_array.should have(5).items
end
