class Public::CartItemsController < ApplicationController
  
  def index
    @cart_item = CartItem.new
    @cart_item = CartItem.all
  end
  
  def create
    @cart_item = CartItem.new(cart_item_params)
  end
  
  def update
  end
  
  def destroy
  end
  
end
