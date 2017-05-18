class BooksController < ApplicationController 

  def index 
    @books = Book.all
  end

  def show 
    @book = Book.find_by(id: params[:id])
    if @book
      render :show 
    else 
      redirect_to books_path
    end
  end

  def new 
    @book = Book.new
  end

  def create
    params.inspect
    @book = Book.new(book_params)
    if @book.save 
      redirect_to books_path
    else 
      render :new
    end
  end

  private 

  def book_params 
    params.require(:book).permit(:title, genre_ids: [], genre_attribute: :title)
  end
  
end