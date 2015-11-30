# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :text
#  user_id    :integer
#  food_id    :integer
#  latitude   :string
#  longitude  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
end
