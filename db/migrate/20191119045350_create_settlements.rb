class CreateSettlements < ActiveRecord::Migration[5.2]
  def change
    create_table :settlements do |t|
      t.string :stripe_id
      t.string :card_brand
      t.string :card_exp_month
      t.string :card_exp_year
      t.string :card_last4
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
