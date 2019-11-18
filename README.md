# README



rails g scaffold Shop name:string address:string

rails g scaffold Product name:string description:text price:decimal shop:references

rails g scaffold Cart

rails g scaffold CartItem product:references cart:references

rails g scaffold Order total:decimal item_total:decimal shipment_total: decimal payment_total:decimal user:references shop:references

rails g scaffold OrderItem quantity:integer product:references order:references


rails g scaffold Settlement stripe_id:string card_brand:string card_exp_month:string card_exp_year:string card_last4:string user:references order:references

rails g scaffold Shipment sender_address:text scheduled_shipped_on:datatime preferred_delivery_on:datetime order:references
