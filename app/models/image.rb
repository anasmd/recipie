class Image < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :attachable, :polymorphic => true
  attr_accessible :file
end
