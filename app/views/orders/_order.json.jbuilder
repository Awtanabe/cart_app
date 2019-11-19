json.extract! order, :id, :total, :item_total, :shipment_total, :decimal, :payment_total, :user_id, :shop_id, :created_at, :updated_at
json.url order_url(order, format: :json)
