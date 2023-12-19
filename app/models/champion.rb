class Champion < ApplicationRecord
  
  validates :name, presence: true
  validates :faction, presence: true
  validates :rarity, presence: true
  validates :role, presence: true
  validates :affinity, presence: true
  
end
