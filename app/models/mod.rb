class Mod < ActiveRecord::Base
  attr_accessible :description, :name, :rating, :downloads, :forge_compatible

  scope :most_popular, order('downloads DESC')
  scope :highest_rated, order('rating DESC')

  def self.five_most_popular
    self.most_popular.limit 5
  end

  def self.five_highest_rated
    self.highest_rated.limit 5
  end
end
