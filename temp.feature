
def ljlkj do
  table.hashes.each do |k,v|
    page.has css a v text: 
  end
end

  Scenario: This is a feature with a table
    Given there are the following monsters:
      | Name    | Hitpoints |
      | Blaaarg | 23        |
      | Moorg   | 12        |
    Then "name" should have "hitpoints"

step "there are the following monsters:" do |table|
  @monsters = {}
  table.hashes.each do |hash|
  @monsters[hash['Name']] = hash['Hitpoints'].to_i
  end
end

step "name should have hitpoints" do
  table.hashes.each do |hash|
    @monster
  end
end
