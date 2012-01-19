class Recipe < ActiveRecord::Base
  acts_as_commentable
  has_many :ingredients
  has_one :image, :as => :attachable
  has_many :taggings, :as => :taggable ,:dependent => :destroy
  has_many :tags, :through => :taggings
  attr_accessor :tags
  
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :tags
  validates :title, :directions, :preperation_time, :cooking_time , :presence => true
  
end
