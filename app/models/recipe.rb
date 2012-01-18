class Recipe < ActiveRecord::Base
  acts_as_commentable
  acts_as_rateable
  has_many :ingredients
  has_one :image, :as => :attachable
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :image
  validates :title, :directions, :preperation_time, :cooking_time , :presence => true
end
