class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.text :sender_address
      t.datetime :scheduled_shipped_on
      t.datetime :preferred_delivery_on
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
