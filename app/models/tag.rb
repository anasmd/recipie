class Tag < ActiveRecord::Base
  has_many :taggings
  validates :name, :presence => true
  validates :name, :uniqueness => true
end
