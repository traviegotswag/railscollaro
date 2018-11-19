class Styles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.text :name, optional: true
      t.text :collar, optional: true
      t.text :front, optional: true
      t.text :cuff, optional: true
      t.text :back, optional: true
      t.text :monogram, optional: true
      t.text :remark, optional: true
      t.timestamps
      t.references :user
    end
  end
end
