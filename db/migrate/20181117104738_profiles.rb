class Profiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :size
      t.integer :height, :precision => 4, :scale => 2
      t.integer :weight, :precision => 4, :scale => 2
      t.text :belly
      t.text :watch
      t.text :watch_hand
      t.text :shoulder_slope
      t.text :measurement_method
      # t.string :image_url
      t.references :user, unique: true
    end
  end
end 