class PrintingPricesController < ApplicationController
  before_action :set_book
  before_action :set_printing_price, only: [:show, :edit, :update, :destroy]

  def index
    @printing_prices = @book.printing_prices
  end

  def show
  end

  def new
    @printing_price = @book.printing_prices.build
  end

  def create
    @printing_price = @book.printing_prices.build(printing_price_params)

    if @printing_price.save
      redirect_to book_printing_prices_path(@book), notice: 'Printing price was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @printing_price.update(printing_price_params)
      redirect_to book_printing_prices_path(@book), notice: 'Printing price was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @printing_price.destroy
    redirect_to book_printing_prices_path(@book), notice: 'Printing price was successfully destroyed.'
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def set_printing_price
    @printing_price = @book.printing_prices.find(params[:id])
  end

  def printing_price_params
    params.require(:printing_price).permit(:quantity, :ipsis_price, :coan_price, :geografica_price, :leograf_price)
  end
end
