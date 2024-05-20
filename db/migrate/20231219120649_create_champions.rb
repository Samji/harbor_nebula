class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :faction_id
      t.integer :rarity_id
      t.integer :role_id
      t.integer :affinity_id

      t.timestamps
    end
  end
end
