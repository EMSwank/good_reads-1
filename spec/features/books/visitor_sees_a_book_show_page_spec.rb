require 'rails_helper'

describe "Visitor" do
  context "visits book show page" do
    it "see the book title and a list of reviews for that book." do
      book = Book.create(title: "Foo")
      user = User.create(name: "Mr. Bar")
      review = Review.create(text: "qwerty" book_id: book.id, user_id: user.id)
      visit book_path(book)

      expect(page).to have_content(book.title)
      expect(page).to have_content(user.name)
      expect(page).to have_content(review.title)
    end

  end
end

=begin User Stories
As a Visitor,
When I visit a book show page,
I see the book title and a list of reviews for that book.
The review shown should include the text of the review, and user who wrote the review.

As a Visitor,
When I visit a book show page,
I also see a rating that each user gave the book as part of their review.

(rating will be a number between 1 and 5)

As a Visitor,
When I visit a book show page,
I see the average rating for that book.

(e.g "Average Rating: 3.5")

As a Visitor,
When I visit a book show page,
I see a heading that includes the highest rating for that book.

(e.g "Highest Rating: 4").

As a Visitor,
When I visit a book show page,
under the heading for highest rating,
I see the review text, and the name of the reviewer
that submitted that review.

(it's okay if the review is also listed again on the page later with all other reviews)

As a Visitor,
When I visit a book show page,
I see a header that includes the lowest rating for that book.

(e.g "Lowest Rating: 1")

As a User,
When I visit the book show page,
under the header for lowest rating,
I see the body of that review and the name of the reviewer
that submitted that review.

(it's okay if the review is also listed again on the page later with all other reviews)
=end