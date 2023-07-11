class Public::CustomersController < ApplicationController
  
  def show
    @customer = current_customer
  end 
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    
  end
  
  def complete
  end
  
  def secession
  end
  
   private

  def customer_params
    params.require(:customer).permit(:email, :last_name, :first_name, :first_name_kana,:first_name_kana, :postal_code, :address, :telephone_number)
  end
  
end
