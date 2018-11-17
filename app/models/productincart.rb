class ProductInCart < ApplicationRecord
    
    has_one :measurement
    has_one :style
    has_one :sku

    belongs_to :order
  
  end