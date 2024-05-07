class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :champions do |t|
      t.string :champion_name
      t.string :faction_id
      t.string :rarity_id
      t.string :role_id
      t.string :affinity_id

      t.timestamps
    end
  end
end
