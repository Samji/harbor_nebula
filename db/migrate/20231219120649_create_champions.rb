class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :faction
      t.string :rarity
      t.string :role
      t.string :affinity

      t.timestamps
    end
  end
end
