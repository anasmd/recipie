class Recipy< ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  attr_accessible :ingredients_attributes
end

