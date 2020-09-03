class User < ApplicationRecord
  validates :email, :password, :username, :firstname, :secondname,
              presence: true,
              length: { minimum: 5 }
  validates :email, :password, :username,
              uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :password, 
              length: { maximum: 20 },
              confirmation: true
  validates :password_confirmation, presence: true

  has_many :posts

end
