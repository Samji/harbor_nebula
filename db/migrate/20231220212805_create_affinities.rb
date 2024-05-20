class CreateAffinities < ActiveRecord::Migration[7.1]
  def change
    create_table :affinities do |t|
      t.string :name
    end
  end
end
