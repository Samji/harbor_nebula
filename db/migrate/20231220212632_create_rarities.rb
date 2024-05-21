class CreateRarities < ActiveRecord::Migration[7.1]
  def change
    create_table :rarities do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :rarities, :name, unique: true
  end
end
