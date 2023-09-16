class KitBooksController < ApplicationController

  def index

  end

  def show

  end

  def new
    @kit_book = KitBook.new
    2.times { @kit_book.items.build }
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
