class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :tip
      t.decimal :total
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
