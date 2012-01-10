class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable
  has_many :comments
  #attr_accessor :confirm_password, :confirm_msg
  attr_accessible :username, :login, :login, :email, :password, :password_confirmation
  attr_accessor :login
  validates :email, :password, :presence => true
  validates :email, :uniqueness => true, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = User.where(:email => data.email).first
      user
    else # Create a user with a stub password. 
      User.create!(:email => data.email, :password => Devise.friendly_token[0,20]) 
    end
  end

end
