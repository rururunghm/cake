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
    @order = Order.new
    if order_params[:delivery_method] == '0'
      @order.gip_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.address_name = current_customer.first_name + current_customer.last_name
    elsif order_params[:delivery_method] == '1'
      delivery = Delivery.find(order_params[:select_address])
      @order.gip_code = delivery.gip_code
      @order.address = delivery.address
      @order.address_name = delivery.address_name
    else
      @order.gip_code = order_params[:gip_code]
      @order.address = order_params[:address]
      @order.address_name = order_params[:address_name]
    end
      @order.payment_methods = order_params[:payment_methods]
      @cart_items = current_customer.cart_items
        @total = 0
        @cart_items.each do |cart_item| 
          @total = ((cart_item.item.price * 1.1).floor) * cart_item.amount + @total
        end
  end
  
  def complete
    
  end
  
  def create
       @order = Order.new(order_params)
       @order.customer_id = current_customer.id
       @order.save
    if order_params[:delivery_method] == '0'
      @order.gip_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.address_name = current_customer.first_name + current_customer.last_name
    elsif order_params[:delivery_method] == '1'
      delivery = Delivery.find(order_params[:select_address])
      @order.gip_code = delivery.gip_code
      @order.address = delivery.address
      @order.address_name = delivery.address_name
    else
      @order.gip_code = order_params[:gip_code]
      @order.address = order_params[:address]
      @order.address_name = order_params[:address_name]
    end
      @order.payment_methods = order_params[:payment_methods]
      @cart_items = current_customer.cart_items
       @total = 0
        @cart_items.each do |cart_item| 
          @total = ((cart_item.item.price * 1.1).floor) * cart_item.amount + @total
        end
      redirect_to complete_orders_path 
  end
  
  def show
  end
  
   private

  def order_params
    params.require(:order).permit(:address, :gip_code, :address_name, :payment_methods, :invoice_amount, :postage, :select_address, :delivery_method)
  end
  
end
