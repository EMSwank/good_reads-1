class AddReviewsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :review, foreign_key: true
  end
end
