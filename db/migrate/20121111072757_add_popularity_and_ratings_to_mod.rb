class AddPopularityAndRatingsToMod < ActiveRecord::Migration
  def change
    add_column :mods, :rating, :decimal
    add_column :mods, :downloads, :integer
  end
end
