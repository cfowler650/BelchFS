# == Schema Information
#
# Table name: menus
#
#  id            :integer          not null, primary key
#  name          :string
#  restaurant_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy
  has_many :reviews, through: :items

end
