class Faction < ApplicationRecord
  has_many :champions

  validates :name, presence: true, uniqueness: true
end
