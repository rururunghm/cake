class Public::CartItemsController < ApplicationController
  
  def index
    @cart_item = CartItem.new
    @cart_items = CartItem.all
    @c_item = Item
  end
  
  def create
    binding.pry
    @cart_item = Cartitem.new(cart_item_params)
    @cart_item.save
    redirect_to public_orders_path
  end
  
  def update
  end
  
  def destroy
  end
  
   private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end
  
end
