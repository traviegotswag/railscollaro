class OrdersController < ApplicationController

    def show
      # order_items? how does rails know what it is since we only have the model order_items
      @order_items = current_order.order_items
    end

end