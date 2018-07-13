class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  # has_many :user_reviews
  # has_many :users, through: :user_reviews
end
