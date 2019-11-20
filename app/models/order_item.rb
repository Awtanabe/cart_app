class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def total_price
    where(cart_id: current_cart.id)
    puts"totoal"
  end
end
