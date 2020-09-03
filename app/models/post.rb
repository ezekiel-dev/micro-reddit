class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body,
              presence: true,
              length: { minimum: 5 }
  validates :title, length: { maximum: 100 }
end
