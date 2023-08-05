class Public::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries
  end
  
  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.customer_id = current_customer.id
    if @delivery.save
    redirect_to deliveries_path
    else
    redirect_to root_path 
    end
  end
  
  def edit
    @delivery = Delivery.find(params[:id])
  end
  
  def update
    @delivery = Delivery.find(params[:id])
    @delivery.update(delivery_params)
    redirect_to  deliveries_path
  end
  
  def destroy
    deliveries = Delivery.find(params[:id])
    deliveries.destroy  
    redirect_to deliveries_path 
  end
  
   private

  def delivery_params
    params.require(:delivery).permit(:gip_code, :address, :address_name)
  end
  
  
  
end
