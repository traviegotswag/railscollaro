class Measurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.text :name 
      t.integer :shoulder, precision: 5, scale: 2
      t.integer :chest, precision: 5, scale: 2
      t.integer :waist, precision: 5, scale: 2
      t.integer :hips, precision: 5, scale: 2
      t.integer :shirt_length, precision: 5, scale: 2
      t.integer :sleeve_length, precision: 5, scale: 2
      t.integer :elbow, precision: 5, scale: 2
      t.integer :left_cuff, optional: true, precision: 5, scale: 2
      t.integer :right_cuff, optional: true, precision: 5, scale: 2
      t.integer :cuff_length, precision: 5, scale: 2
      t.integer :collar_width, precision: 5, scale: 2
      t.timestamps
      t.references :user
    end
  end
end

