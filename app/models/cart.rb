class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  def total
    sum = 0
    cart_items.each do |im|
      sum += im.product.price
    end
    sum
   end
end
