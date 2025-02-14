class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:borrow, :return_book]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def borrow
    book=Book.find(params[:id])
    if book.available
      book.update(available:false)
      Borrowing.create(user: current_user, book:book, due_date: 2.weeks.from_now)
      redirect_to_user_path(current_user), notice: "You have borrowed #{book.title}."
    else
      redirect_to_book_path(book), alert:"Book is already borrowed."
    end
end

def return_book
  borrowing = Borrowing.find_by(user: current_user, book_id: params[:id])
  borrowing.book.update(available: true)
  borrowing.destroy
  redirect_to_user_path(current_user), notice: "Book returned successfully."
end
end