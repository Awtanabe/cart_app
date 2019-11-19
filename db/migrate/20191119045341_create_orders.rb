class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.decimal :item_total
      t.string :shipment_total
      t.string :decimal
      t.decimal :payment_total
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
