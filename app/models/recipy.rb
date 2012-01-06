class Recipy< ActiveRecord::Base
  has_many :ingredients
  has_one :image, :as => :attachable
  accepts_nested_attributes_for :ingredients
  attr_accessible :ingredients_attributes
end

