class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy #this allows me to do @garden.plants
end
