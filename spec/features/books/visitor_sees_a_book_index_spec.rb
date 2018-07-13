require 'rails_helper'

describe "visitor" do
  context "visits the book index page" do
    it "see all book titles in the database" do
      book1 = Book.new(title: "foo")
      book2 = Book.new(title: "bar")
      visit books_path

      expect(page).to have_content(book1.title)
      expect(page).to have_content(book2.title)
    end
  end
end



=begin User Stories
As a Visitor,
When I visit a book index page,
I see all book titles in the database,
And each book title is a link to that book's show page.
=end