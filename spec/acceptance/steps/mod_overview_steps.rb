step "the following mod categories:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.create :category, hash
  end
end

step "the following mods:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.create :mod, hash
  end
end

step "I visit the home page" do
 visit('/')
end

step "I should see the five most popular mods links" do
  links_array = find(".most_popular").all("a")
  links_array.should have(5).items

  #should we ask the mod model for the highest rated mods 
  #and compare it to the links_array?
end

step "I should see the five highest rated mods links" do
  links_array = find(".highest_rated").all("a")
  links_array.should have(5).items
end
