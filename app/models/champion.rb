class Champion < ApplicationRecord
  belongs_to :faction
  belongs_to :rarity
  belongs_to :role
  belongs_to :affinity

  validates :name, presence: true
  validates :faction, presence: true
  validates :rarity, presence: true
  validates :role, presence: true
  validates :affinity, presence: true
end
