class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :name
      t.text :description
      t.boolean :forge_compatible

      t.timestamps
    end
  end
end
