class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :shipping_fee, precision: 10, scale: 2
      t.integer :total, precision: 10, scale: 2
      t.integer :status, default: 0
      t.timestamps 
      t.references :user
    end
  end
end

      # t.boolean :coupon
      # t.string :couponcode