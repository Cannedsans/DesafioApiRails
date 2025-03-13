class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name ,null: false
      t.text :description ,null: false
      t.string :address
      t.string :cnpj ,null: false

      t.timestamps
    end
  end
end
