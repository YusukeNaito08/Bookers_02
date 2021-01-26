class BooksController < ApplicationController

  def index
    @books =Book.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def show
    @book_show = Book.find(params[:id])
    @user = User.find(@book_show.user_id)
    @book = Book.new
    @book_comment = BookComment.new
  end

  def create
    @book =Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)

  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book.id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
