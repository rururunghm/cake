class Admin::HomesController < ApplicationController
  def top
    @orders = Order.all
    #@orders = orders.customer
  end
end
