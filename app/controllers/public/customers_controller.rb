class Public::CustomersController < ApplicationController
  
  
  def show
    @customer = current_customer
  end 
  
  def edit
    @customer = current_customer
  end
  
  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to  customers_mypage_path
  end
  
  def complete
    @customer = current_customer
  end
  
  def secession
    @customer = current_customer
    @customer.update(is_deleted: true)
    flash[:notice] = "本当に削除してもよろしいですか？"
    reset_session
    redirect_to root_path
  end
  
   private

  def customer_params
    params.require(:customer).permit(:email, :last_name, :first_name, :first_name_kana, :last_name_kana, :postal_code, :address, :telephone_number, :is_delete)
  end
  
end
