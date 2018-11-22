class Order < ApplicationRecord
    
  # is this necessary?
    belongs_to :user
    has_many :order_items

    # before_create :set_order_status
    # before_save :update_subtotal
    before_save :my_method_name

    def my_method_name
      # decide how you want to calculate the total prices 
      # self refers to the instance of the order that this is getting called on 
      # i.e. if you want to get all your order_items,
      # you can do self.order_items
    end 

    enum status: ["pending", "paid", "completed"]

    # @user = current_user
    # if @user
      def self.find_existing_order(user)
        user.orders.find_by(status: 0)
        # user.orders.find_by(status: "pending")
      end
    # end

    # def subtotal
    #   order_items.collect { |orderitem| orderitem.valid? ? (orderitem.quantity * orderitem.unit_price) : 0 }.sum
    # end

    # def shippingfee
    #   if subtotal > 100, self[:shipping_fee] = 0
    #   else self[:shipping_fee] = 5
    #   end
    # end
      
    # def total
    #   self[:total] = subtotal + shipping_fee
    # end
  # -------------------------------------------------
    private
    
      def update_subtotal
        self[:subtotal] = subtotal
      end

      # def set_order_status
      #   self.order_status_id = 1
      # end

  # -------------------------------------------------
  end
  
  