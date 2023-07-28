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
  end
  
  def show
  end
  
   private

  def orders_params
    params.require(:orders).permit(:address, :gip_code, :address_name, :payment_methods, :invoice_amount, :postage, :order_status)
  end
  
end
