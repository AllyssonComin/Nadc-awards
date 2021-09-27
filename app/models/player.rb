class Player < ApplicationRecord
  validates :nickname, presence: true
  has_many :play
end
