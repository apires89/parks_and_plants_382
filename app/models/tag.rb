class Tag < ApplicationRecord
  has_many :plant_tags, dependent: :destroy # @tag.plant_tags
  has_many :plants, through: :plant_tags # @tag.plants
end
