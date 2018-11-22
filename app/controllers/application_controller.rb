class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_order
  
    # order has order status, so for example 0/1/2 => ["pending", "paid", "completed"]
    # find all of a users orders, if he has no "pending", create a new one for him
    def current_order    
      @order = Order.find_existing_order(current_user)
      @order ? @order : Order.create(user: current_user)
    end
end

    # @order = Order.find(5)
    # @order = Order.new
    # @order = Order.save 
    # @order.foo [instance method]

    # Order.find_existing_order(current_user)
    # def self.class_method
    #   puts "bye"
    # end
    # Order.class_method

    # class methods with no self in front are known as instance methods - you will call this method on an instance of a class
    # class methods with self in front are known as class methods - you will call this method on an instance of a class
    # each row is an instance of your order class

