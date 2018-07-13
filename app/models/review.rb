class Review < ApplicationRecord
  belongs_to :book
  have_many :user_reviews
  has_many :users, through: :user_reviews
end
