class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
    # Use o @item definido pelo before_action para exibir os detalhes do item
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item foi criado com sucesso.'
    else
      render :new
    end
  end

  def edit
    # Use o @item definido pelo before_action para editar o item
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item foi atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item foi excluído com sucesso.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    # Defina os parâmetros permitidos aqui com base nos campos do modelo Item
    params.require(:item).permit(:item, :quantity, :supplier, :unit_price, :total_price, :shipping, :observation)
  end
end
