class Recipe < ActiveRecord::Base
  acts_as_commentable
  acts_as_taggable
  has_many :ingredients, :inverse_of => :recipe
  has_one :image, :as => :attachable
   
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  accepts_nested_attributes_for :image, :allow_destroy => true
  validates :title, :directions, :preperation_time, :cooking_time , :presence => true
  
end
