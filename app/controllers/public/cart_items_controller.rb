class Public::CartItemsController < ApplicationController
  
  def index
    @cart_item = CartItem.new
    @cart_items = CartItem.all
    @c_item = Item
  end
  
  def create
    @cart_item = current_member.cart_items.new(cart_item_params)
      if current_member.cart_items.find_by(item_id: params[:cart_item][:item_id]).present?
         cart_item = current_member.cart_items.find_by(item_id: params[:cart_item][:item_id])
         cart_item.amount += params[:cart_item][:amount].to_i
         cart_item.save
         redirect_to cart_items_path
      elsif @cart_item.save
            @cart_items = current_member.cart_items.all
            render 'index'
      else
            render 'index'
      end
  end
  
  def update
  end
  
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    @cart_items = CartItem.all
    render 'index'
  end
  
  def destroy_all 
    cart_items = CartItem.all
    cart_items.destroy_all
    render 'index'
  end
  
   private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount, :image)
  end
  
end
