class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :product
      t.string :description
      t.string :image
      t.decimal :price, :precision => 2, :scale => 2
      t.boolean :active 

      t.timestamps
    end
  end
end
