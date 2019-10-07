class Restaurant < ApplicationRecord
    has_many :menus
    has_many :items, through: :menus
end
