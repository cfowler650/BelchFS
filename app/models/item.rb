class Item < ApplicationRecord
  belongs_to :menu
  has_many :reviews, dependent: :destroy
end
