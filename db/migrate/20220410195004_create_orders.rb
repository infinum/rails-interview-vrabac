class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total_price_cents, null: false

      t.timestamps
    end
  end
end
