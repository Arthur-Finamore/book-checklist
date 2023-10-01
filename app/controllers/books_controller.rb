class BooksController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :authenticate_user!, only: [:new, :edit, :index]

  def index
    #@books = Book.all
    if params[:query]
      @books = Book.search_by_title_and_code(params[:query])
      else
        @books = []
    end
  end

  def all
    @books = Book.all
  end

  def printing_prices_show
    @book = Book.find(params[:id])
    @printing_prices = @book.printing_prices.all
  end

  def printing_prices_index
    @books = Book.all
    # @book = Book.find(params[:id])
    # @printing_prices = @book.printing_prices
  end

  def show
    @book = Book.find(params[:id])
  end

  def show_pdf
    @book = Book.find(params[:id])

    respond_to do |format|
      format.pdf do
        render pdf: "Checklist - #{@book.title}",
               template: 'books/show',
               layout: 'pdf_layout'
      end
    end
  end

  def new
    @book = Book.new
    @book.printing_prices.build # Isso cria uma instância de printing_prices para o livro
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to book_path(@book), notice: 'Book was successfully created.'
    else
      render :new
    end
  end


  def edit
    @book = Book.find(params[:id])
    @book.printing_prices.build unless @book.printing_prices.present?
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
    redirect_to root_path, notice: 'Book was successfully destroyed.'
  end

  private

  def book_params
    params.require(:book).permit(
      :title, :code, :pages, :tiragem, :selo, :delivery_date, :fitilho,
      :cabeceado, :pintura_lateral, :sticker, :encartes,
      :cover_type, :cover_format, :cover_paper, :cover_colors, :cover_finish,
      :miolo_format, :miolo_paper, :miolo_colors, :miolo_finish,
      :guarda_format, :guarda_paper, :guarda_colors, :guarda_finish,

      printing_prices_attributes: [:id, :quantity, :santa_marta_price, :pancron_price, :ipsis_price, :coan_price, :geografica_price, :leograf_price, :_destroy]
    )
  end

end
