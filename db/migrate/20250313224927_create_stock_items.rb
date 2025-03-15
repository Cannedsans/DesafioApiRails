class CreateStockItems < ActiveRecord::Migration[7.1]
  def change
    create_table :stock_items do |t|
      t.references :product, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.integer :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

      t.timestamps
    end
  end
end
