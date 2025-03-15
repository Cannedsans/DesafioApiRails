class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name ,null: false
      t.float :price ,null: false, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
      t.text :description ,null: false
      t.string :image_url ,null: false

      t.timestamps
    end
  end
end
