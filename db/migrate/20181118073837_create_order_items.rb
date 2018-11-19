class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.decimal :unit_price, precision: 12, scale: 3
      t.integer :quantity
      t.decimal :total_price, precision: 12, scale: 3
      t.text :collar
      t.text :front
      t.text :cuff
      t.text :back
      t.text :monogram
      t.text :remark
      t.timestamps
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.references :style, foreign_key: true
      t.references :measurement, foreign_key: true
    end
  end
end

