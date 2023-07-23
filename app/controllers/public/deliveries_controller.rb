class Public::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @deliveries = Derivery.all
  end
  
  def create
    
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
