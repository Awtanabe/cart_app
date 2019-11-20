# README



rails g scaffold Shop name:string address:string

rails g scaffold Product name:string description:text price:decimal shop:references

rails g scaffold Cart

rails g scaffold CartItem product:references cart:references

rails g scaffold Order total:decimal item_total:decimal shipment_total: decimal payment_total:decimal user:references shop:references

rails g scaffold OrderItem quantity:integer product:references order:references


rails g scaffold Settlement stripe_id:string card_brand:string card_exp_month:string card_exp_year:string card_last4:string user:references order:references

rails g scaffold Shipment sender_address:text scheduled_shipped_on:datatime preferred_delivery_on:datetime order:references

order


```ruby
[1] pry(#<UkokkeiBackend::Api::V1::OrdersController>)> params
=> {"merchandises"=>
  {"0"=>
    {"temporary_id"=>"6d5bfac4-1dec-4894-b401-21532c857f84",
     "id"=>"44",
     "type"=>"Product",
     "name"=>"アイアンマン",
     "image"=>
      "/a5693709-d478-4a5b-a5bc-3948140a5928/uploads/images/product_image/file/39/%E3%82%B5%E3%83%B3%E3%83%95%E3%82%9A%E3%83%AB%EF%BC%91.jpg",
     "quantity"=>"1",
     "is_force_free_postage"=>"false",
     "is_force_free_settlement_charge"=>"false",
     "is_purcharsable_with_point"=>"true",
     "is_no_shipment"=>"false",
     "option_types"=>"",
     "total"=>"33,000円",
     "price"=>"30,000円",
     "point"=>"",
     "max_quantity"=>"1000",
     "shipments"=>{"0"=>{"quantity"=>"0", "uid"=>"1C07E206-6AC9-7279-1D7F-FBC13677C091"}},
     "tax_per_quantity"=>"3000.0",
     "total_includes_tax"=>"33000.0",
     "tax_rate_amount"=>"10.0",
     "tax_rate_amount_with_format"=>"10%",
     "tax_per_quantity_with_format"=>"3,000円",
     "price_includes_tax_with_format"=>"33,000円",
     "groupedMerchandises"=>"",
     "variant_id"=>"46",
     "total_tax"=>"3000.0"}},
 "adjustment"=>{"id"=>"", "amount"=>"0.0", "amount_with_format"=>"0円", "note"=>""},
 "billing_address"=>{"is_copy"=>"true"},
 "client_address"=>
  {"detail"=>"東京都 世田谷区 池尻 ",
   "first_name"=>"テモナ ",
   "family_name"=>"テモナ ",
   "first_name_kana"=>"",
   "family_name_kana"=>"",
   "zip_code"=>"1540001",
   "city"=>"世田谷区",
   "address"=>"池尻",
   "building_name"=>"",
   "tel"=>"08011111111",
   "sub_tel"=>"",
   "corporate_name"=>"",
   "department"=>"",
   "email"=>"",
   "state_id"=>"13",
   "state_name"=>"東京都",
   "gender_shop_id"=>"",
   "job_shop_id"=>"",
   "sub_email"=>"",
   "birthday"=>"",
   "is_campaign_accepted"=>"false",
   "is_outbound_accepted"=>"true"},
 "device_kind"=>"",
 "sender_address"=>{"is_copy"=>"true"},
 "settlement"=>
  {"division_times"=>"1", "charge_total"=>"0.0", "charge_total_with_format"=>"0円", "payment_method_shop_id"=>"11"},
 "shipments"=>
  {"0"=>
    {"scheduledDeliveryOn"=>"2019-11-22",
     "scheduledShippedOn"=>"2019-11-21",
     "shop_shipping_method_id"=>"1",
     "is_isolated_address"=>"false",
     "postage_with_format"=>"0円",
     "edited_postage_with_format"=>"0円",
     "cash_on_delivery_charge"=>"0.0",
     "available"=>"true",
     "cash_on_delivery_charge_with_format"=>"0円",
     "postage"=>"0.0",
     "timeZone"=>"1",
     "scheduledShippedOnWarning"=>"",
     "preferedDeliveryOnWarning"=>"",
     "merchandises"=>
      {"0"=>
        {"temporary_id"=>"6d5bfac4-1dec-4894-b401-21532c857f84",
         "id"=>"44",
         "type"=>"Product",
         "name"=>"アイアンマン",
         "image"=>
          "/a5693709-d478-4a5b-a5bc-3948140a5928/uploads/images/product_image/file/39/%E3%82%B5%E3%83%B3%E3%83%95%E3%82%9A%E3%83%AB%EF%BC%91.jpg",
         "quantity"=>"1",
         "is_force_free_postage"=>"false",
         "is_force_free_settlement_charge"=>"false",
         "is_purcharsable_with_point"=>"true",
         "is_no_shipment"=>"false",
         "option_types"=>"",
         "total"=>"33,000円",
         "price"=>"30,000円",
         "point"=>"",
         "max_quantity"=>"1000",
         "shipments"=>{"0"=>{"quantity"=>"0", "uid"=>"1C07E206-6AC9-7279-1D7F-FBC13677C091"}},
         "tax_per_quantity"=>"3000.0",
         "total_includes_tax"=>"33000.0",
         "tax_rate_amount"=>"10.0",
         "tax_rate_amount_with_format"=>"10%",
         "tax_per_quantity_with_format"=>"3,000円",
         "price_includes_tax_with_format"=>"33,000円",
         "groupedMerchandises"=>"",
         "variant_id"=>"46",
         "total_tax"=>"3000.0"}},
     "tmpId"=>"146",
     "shipping_address"=>
      {"is_copy"=>"true",
       "detail"=>"東京都 世田谷区 池尻 ",
       "first_name"=>"テモナ ",
       "family_name"=>"テモナ ",
       "first_name_kana"=>"",
       "family_name_kana"=>"",
       "zip_code"=>"1540001",
       "city"=>"世田谷区",
       "address"=>"池尻",
       "building_name"=>"",
       "tel"=>"08011111111",
       "sub_tel"=>"",
       "corporate_name"=>"",
       "department"=>"",
       "email"=>"",
       "state_id"=>"13",
       "state_name"=>"東京都",
       "gender_shop_id"=>"",
       "job_shop_id"=>"",
       "sub_email"=>"",
       "birthday"=>"",
       "is_campaign_accepted"=>"false",
       "is_outbound_accepted"=>"true"},
     "editedPostage"=>""}},
 "user_id"=>"874",
 "advertisement_id"=>"",
 "coupon_amount"=>"0",
 "lost_point_attributes"=>{"value"=>"0", "pointAdjustmentWithFormat"=>"0円"},
 "rank_discount"=>"0",
 "ordered_at"=>"",
 "is_no_shipment"=>"false",
 "is_call_center_order"=>"false",
 "format"=>"json",
 "controller"=>"ukokkei_backend/api/v1/orders",
 "action"=>"create"}
[2] pry
```
