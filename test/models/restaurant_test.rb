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

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
