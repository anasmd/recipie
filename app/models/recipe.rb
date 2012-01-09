class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_one :image, :as => :attachable
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :image
#  attr_accessible :ingredients_attributes
end
