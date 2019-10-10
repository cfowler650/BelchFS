class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy
  has_many :reviews, through: :items

end
