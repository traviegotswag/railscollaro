class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :subtotal, precision: 10, scale: 2
      # t.boolean :freeshipping
      t.integer :shippingfee, precision: 10, scale: 2
      # t.boolean :coupon
      # t.string :couponcode
      t.integer :total, precision: 10, scale: 2
      t.timestamps 
      t.references :user
    end
  end
end
