step "the following mod categories:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.create :category, hash
  end
end

step "the following mods:" do |table|
  table.hashes.each do |hash|
    FactoryGirl.build :mod do |mod|
      mod.attributes = hash
      mod.id = hash['id']
      mod.save
    end
  end
end

step "I visit the home page" do
 visit('/')
end

step "I should see the five most popular mods links:" do |table|
  count = 0
  five_most_popular = page.find '.five_most_popular'
  table.hashes.each do |hash|

    ## OLD, SLIGHTLY LESS TERRIBLE WAY TO FIND DESCENDANT, RELATIVE LINKS --v
    #five_most_popular.should have_xpath %Q^.//a[@href="#{hash['path']}"]^, :text => hash['text']
    #
    ## NEW AND IMPROVED WAY XD  --v
    five_most_popular.should have_link hash['text'], href: hash['path']
    count += 1
  end
  count.should == 5
end

step "I should see the five highest rated mods links" do |table|
  count = 0
  five_highest_rated = page.find '.five_highest_rated'
  table.hashes.each do |hash|

    ## OLD, SLIGHTLY LESS TERRIBLE WAY TO FIND DESCENDANT, RELATIVE LINKS --v
    #five_highest_rated.should have_xpath %Q^.//a[@href="#{hash['path']}"]^, :text => hash['text']
    #
    ## NEW AND IMPROVED WAY XD  --v
    five_highest_rated.should have_link hash['text'], href: hash['path']
    count += 1
  end
  count.should == 5
end

step "I should see a link to the highest rated mods list" do
  pending 'waiting for tim'
  page.should have_link 'Highest Rated', href: '/mods/by_rating/highest_first'
end

step "I should see a link to the most popular mods list" do
  pending 'waiting for tim'
  page.should have_link 'Highest Rated', href: '/mods/by_downloads/highest_first'
end

step "I should see a link for each category" do #|table|
  pending 'waiting for tim'
  #table.hashes.each do |hash|
    #page.should have_link hash['name'], href: hash['path']
  #end
end
