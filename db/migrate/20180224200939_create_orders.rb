class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, :precision => 4, :scale => 2
      t.decimal :tax, :precision => 4, :scale => 2
      t.decimal :tip, :precision => 4, :scale => 2
      t.decimal :total, :precision => 4, :scale => 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
