class Public::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @del = Derivery.all
  end
  
  def create
    @deliveries = Deliveries.new(deliveries_params)
    @deliveries.save
    redirect_to public_orders_path
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
  end
  
   private

  def deriveries_params
    params.require(:deliveies).permit(:gip_code, :address, :address_name)
  end
  
end
