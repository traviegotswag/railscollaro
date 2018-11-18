class Styles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.text :collar, optional: true
      t.text :front, optional: true
      t.text :cuff, optional: true
      t.text :back, optional: true
      t.text :monogram, optional: true
      t.text :remarks, optional: true
      t.timestamps
      # references
      t.references :user
      t.references :order_item
    end
  end
end
