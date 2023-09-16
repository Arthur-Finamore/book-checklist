class KitBooksController < ApplicationController
  before_action :set_kit_book, only: [:show, :edit, :update, :destroy]

  def index
    @kit_books = KitBook.all
  end

  def show
    # Mostrar detalhes do kit de livros
  end


  def new
    @kit_book = KitBook.new
     2.times { @kit_book.items.build } # Construir 2 itens iniciais
    @item_number = 1

    # Remove the empty div from the DOM
    if @kit_book.items.count == 1
      @kit_book.items[0].destroy
    end
  end

  def create
    @kit_book = KitBook.new(kit_book_params)
    @kit_book.name = Book.find(kit_book_params[:book_id]).title if kit_book_params[:book_id].present?
    puts "Params received: #{params.inspect}" # Debugging output

    if @kit_book.save
      redirect_to @kit_book, notice: 'Kit Book criado com sucesso.'
    else
      puts "Validation Errors: #{@kit_book.errors.full_messages}"
        # render :new
    end
  end


  def edit
    # Editar o kit de livros
  end

  def update
    if @kit_book.update(kit_book_params)
      redirect_to @kit_book, notice: 'Kit de livros atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @kit_book.destroy
    redirect_to kit_books_url, notice: 'Kit de livros excluído com sucesso.'
  end

  private

  def set_kit_book
    @kit_book = KitBook.find(params[:id])
  end

  def kit_book_params
    params.require(:kit_book).permit(:book_id, :name, items_attributes: [:id, :item, :quantity, :supplier, :unit_price, :total_price, :shipping, :observation, :_destroy])
  end

end
