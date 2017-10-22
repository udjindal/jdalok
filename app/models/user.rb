class User < ActiveRecord::Base
  attr_accessor :password

  validates_presence_of :password, :on => :create
  before_save :encrypt_password
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = where("LOWER(email)= ?", email.downcase).first
    if user && valid_password_hash?(user, password)
      user
    end
  end

  def self.valid_password_hash?(user, password)
    user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  end
end
