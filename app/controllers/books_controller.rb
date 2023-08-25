class BooksController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index

  def index
    @books = Book.all
  end

  def show
    @book = books.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def edit
    @book = books.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to index_path, notice: 'Book was successfully destroyed.'
  end

  private

  def book_params
    params.require(:book).permit(:title, :code, :pages, :tirage, :seal, :delivery_date, :fitilho, :cabeceado, :pintura_lateral, :sticker, :encartes, :user_id)
  end

end
