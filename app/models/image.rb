#require 'file_size_validator' 

class Image < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :attachable, :polymorphic => true
  attr_accessible :file
#  validates :file, 
#    :presence => true, 
#    :file_size => { 
#      :maximum => 0.5.megabytes.to_i 
#    } 

end
