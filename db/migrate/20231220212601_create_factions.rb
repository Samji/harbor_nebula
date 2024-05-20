class CreateFactions < ActiveRecord::Migration[7.1]
  def change
    create_table :factions do |t|
      t.string :name
    end
  end
end
