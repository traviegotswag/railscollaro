class Order < ApplicationRecord
    
  # is this necessary?
    belongs_to :user
    has_many :order_items

    # before_create :set_order_status
    # before_save :update_subtotal

    enum status: ["pending", "paid", "completed"]

    def self.find_existing_order(user)
      user.orders.find_by(status: 0)
      # user.orders.find_by(status: "pending")
    end

    def subtotal
      order_items.collect { |orderitem| orderitem.valid? ? (orderitem.quantity * orderitem.unit_price) : 0 }.sum
    end
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
  
  