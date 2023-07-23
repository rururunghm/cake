class Public::CartItemsController < ApplicationController
  
  def index
    @cart_item = Cartitem.new
    @cart_items = Cartitem.all
  end
  
  def create
    @cart_item = Cartitem.new(cart_item_params)
    @cart_item.save
    redirect_to public_orders_path
  end
  
  def update
  end
  
  def destroy
  end
  
   private

  def cart_items_params
    params.require(:cart_items).permit(:amount)
  end
  
end
