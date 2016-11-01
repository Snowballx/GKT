class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 15, scale: 3
      t.string :image

      t.timestamps
    end
  end
end
