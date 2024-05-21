class CreateAffinities < ActiveRecord::Migration[7.1]
  def change
    create_table :affinities do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :affinities, :name, unique: true
  end
end
