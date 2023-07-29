class Public::OrdersController < ApplicationController
  
  def index
    @orders = Order.all
    @cus =  current_customer
    
  end
  
  def new
    @orders = Order.all
    @cus =  current_customer
    @order = Order.new
  end
  
  def confirm
  end
  
  def complete
  end
  
  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to  confirm_orders_path
  end
  
  def show
  end
  
   private

  def order_params
    params.require(:order).permit(:address, :gip_code, :address_name, :payment_methods, :invoice_amount, :postage, :order_status)
  end
  
end
