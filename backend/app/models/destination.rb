class Destination < ApplicationRecord
  has_many :reviews
  has_many :tourists, through: :reviews
end
