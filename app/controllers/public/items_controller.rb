class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active)
  end
  
end
