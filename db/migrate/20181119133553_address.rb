class Address < ActiveRecord::Migration[5.2]
  def change
    create_table :address do |t|
      t.text :street_address, optional: true
      t.integer :postal_code, optional: true
      t.integer :unit_number, optional: true
      t.integer :contact_number, optional: true
      t.timestamps
      t.references :user
    end
  end
end
