json.extract! shipment, :id, :sender_address, :scheduled_shipped_on, :preferred_delivery_on, :order_id, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
