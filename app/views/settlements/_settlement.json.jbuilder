json.extract! settlement, :id, :stripe_id, :card_brand, :card_exp_month, :card_exp_year, :card_last4, :user_id, :order_id, :created_at, :updated_at
json.url settlement_url(settlement, format: :json)
