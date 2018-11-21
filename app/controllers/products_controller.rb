
class ProductsController < ApplicationController

    def index
        @products = Product.all
        @order_item = current_order.order_items.new
    end
    
    def show
        @user = current_user
        @product = Product.find_by(name: params[:name])
    end 
end

        # if Category.find_by_id(params[:category_id])
        #   @products = Product.where(category_id: params[:category_id]).order(sort_column + ' ' + sort_direction)
        # else
        #   @products = Product.order(sort_column + ' ' + sort_direction)
        # end

        # helper_method :sort_column, :sort_direction