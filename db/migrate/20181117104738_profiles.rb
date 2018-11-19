class Profiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :size
      t.integer :height
      t.integer :weight
      t.text :belly
      t.text :watch
      t.text :watch_hand
      t.text :shoulder_slope
      t.text :measurement_method
      # t.string :image_url
      t.text :street_address, optional: true
      t.integer :postal_code, optional: true
      t.integer :unit_number, optional: true
      t.integer :contact_number, optional: true
      t.references :user
    end
  end
end 