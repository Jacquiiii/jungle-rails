class User < ApplicationRecord
  has_secure_password

  validates :password, length: { minimum: 4 }
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, :last_name, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    user && user.authenticate(password)
  end
end
