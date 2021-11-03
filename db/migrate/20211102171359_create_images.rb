class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title, null: false
      t.text :description
      t.integer :category, null: false
      t.boolean :salable
      t.decimal :price, precision: 8, scale: 2
      t.boolean :is_free

      t.timestamps
    end
  end
end
