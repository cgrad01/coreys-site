class Admin < ActiveRecord::Base
  has_many :posts
  has_many :projects
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :fullname, :password, presence: true
end