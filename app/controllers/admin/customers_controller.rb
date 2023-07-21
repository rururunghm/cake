class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to  admincustomers_path
  end
  
  def customer_params
    params.require(:customer).permit(:email, :last_name, :first_name, :first_name_kana, :last_name_kana, :postal_code, :address, :telephone_number, :is_delete)
  end
  
end
