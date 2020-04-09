class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
  validates_uniqueness_of :tag, scope: :plant, message: "already added"
end
