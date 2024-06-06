class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :champions do |t|
      t.string :name, null: false
      t.references :faction, null: false, foreign_key: true
      t.references :rarity, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.references :affinity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
