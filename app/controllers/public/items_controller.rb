class Public::ItemsController < ApplicationController
  def index
    @p_items = Item.all
  end

  def show
    @p_item = Item.find(params[:id])
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active)
  end
  
end
