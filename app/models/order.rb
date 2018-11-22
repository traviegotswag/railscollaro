class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items

    before_save :finalize

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

    def calc_subtotal
      order_items.collect { |orderitem| orderitem.valid? ? (orderitem.quantity * orderitem.unit_price) : 0 }.sum
    end

    # def calc_shipping
    #   if subtotal > 100, self[:shipping_fee] = 0
    #   else self[:shipping_fee] = 5
    #   end
    # end
      
    # def calc_total
    #   self[:total] = subtotal + shipping_fee
    # end

  
  # -------------------------------------------------
    private
    
      def update_subtotal
        self[:subtotal] = subtotal
      end

    def finalize
        self[:unit_price] = unit_price
        self[:total_price] = quantity * self[:unit_price]
    end

  # -------------------------------------------------
  end
  
  