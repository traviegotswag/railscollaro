class Products < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.decimal :price, precision: 10, scale: 2  
      t.text :description
      t.text :color
      t.text :brand
      t.text :transparency
      t.text :fabric_type
      t.text :fabric_pattern
      t.string :image_url_1
      t.string :image_url_2
      t.string :image_url_3
      t.string :image_url_4
      t.timestamps 
    end
  end
end

# :hashtag_ids => []