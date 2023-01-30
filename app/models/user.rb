class User < ApplicationRecord
  has_secure_password

  validates :password, length: { minimum: 4 }
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, :last_name, presence: true
end
