class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :code, null: false, index: { unique: true }
      t.integer :unit_price_cents, null: false

      t.timestamps
    end
  end
end
