class User < ActiveRecord::Base
  attr_accessor :confirm_password, :confirm_msg
  validates :login, :email, :password, :confirm_password, :presence => true
  validates :email, :uniqueness => true, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

end
