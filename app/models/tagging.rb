class Tagging < ActiveRecord::Base
  belongs_to :taggable, :polymorphic => true
  belongs_to :tag
  validates :tag_id, :presence => true
  validates :uniqueness, :scope => [:taggable_type, :taggable_id]
end
