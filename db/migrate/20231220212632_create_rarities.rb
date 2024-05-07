class CreateRarities < ActiveRecord::Migration[7.1]
  def change
    create_table :rarities do |t|
      t.string :rarity_name
    end
  end
end
