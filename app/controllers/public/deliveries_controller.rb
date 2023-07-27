class Public::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @deliveries = Delivery.all
  end
  
  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.save
    redirect_to public_orders_path
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
  end
  
   private

  def delivery_params
    params.require(:delivery).permit(:gip_code, :address, :address_name)
  end
  
end
