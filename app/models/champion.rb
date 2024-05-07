class Champion < ApplicationRecord
  belongs_to :faction
  belongs_to :rarity
  belongs_to :role
  belongs_to :affinity
end
