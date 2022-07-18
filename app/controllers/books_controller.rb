class BooksController < ApplicationController
  before_action :set_params_id, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.save!
  end

  def edit
  end

  def update
    @book = Book.update(book_params)
    redirect_to books_path(@book)
  end

  def destroy
    @book = Book.destroy
  end

  private

  def set_params_id
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(photos: [], :title, :author, :year_of_production, :price, :starts_at, :contact, :location, :description)
  end
end
