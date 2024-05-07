class CreateAffinities < ActiveRecord::Migration[7.1]
  def change
    create_table :affinities do |t|
      t.string :affinity_name
    end
  end
end
