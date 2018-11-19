class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  has_one :measurement
  has_one :style

  t.timestamps
end
