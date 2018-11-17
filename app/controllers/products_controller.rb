# helper_method :sort_column, :sort_direction

class SkuController < ApplicationController

    def index
        @products = Product.all
        # if Category.find_by_id(params[:category_id])
        #   @products = Product.where(category_id: params[:category_id]).order(sort_column + ' ' + sort_direction)
        # else
        #   @products = Product.order(sort_column + ' ' + sort_direction)
        # end
    end
    
    def show
        @product = Product.find(params[:id])
    end

end