class Game < ApplicationRecord
  has_many :messages
  belongs_to :user
  belongs_to :city
end
