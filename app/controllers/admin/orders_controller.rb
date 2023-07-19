class Admin::OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
  end
  
  private

  def order_params
    params.require(:order).permit(:address, :gip_code, :address_name, :payment_methods, :invoice_amount, :postage, :order_status)
  end
  
  
end
