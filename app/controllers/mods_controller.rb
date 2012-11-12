class ModsController < ApplicationController
  def index
    @five_most_popular = Mod.five_most_popular
    @five_highest_rated = Mod.five_highest_rated
  end
end
