class Restaurant < ApplicationRecord
    has_many :menus, dependent: :destroy
    has_many :items, through: :menus
end
