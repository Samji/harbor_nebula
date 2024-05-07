class CreateFactions < ActiveRecord::Migration[7.1]
  def change
    create_table :factions do |t|
      t.string :faction_name
    end
  end
end
