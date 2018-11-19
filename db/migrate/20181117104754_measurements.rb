class Measurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.integer :shoulder
      t.integer :chest
      t.integer :waist
      t.integer :hips
      t.integer :shirtlength
      t.integer :sleevelength
      t.integer :elbow
      t.integer :leftcuff, optional: true
      t.integer :rightcuff, optional: true
      t.integer :cufflength
      t.integer :collarwidth
      t.timestamps
      t.references :user
      t.references :order_item 
    end
  end
end
