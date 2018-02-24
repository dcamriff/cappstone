class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :item, foreign_key: true
      t.references :order, foreign_key: true
      t.decimal :unit_price, precision: 4, scale: 2
      t.integer :quantity
      t.decimal :total_price, precision: 4, scale: 2

      t.timestamps
    end
  end
end
