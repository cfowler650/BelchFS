# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  cuisine    :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  location   :string           default("{}"), is an Array
#

class Restaurant < ApplicationRecord
    has_many :menus, dependent: :destroy
    has_many :items, through: :menus
end
