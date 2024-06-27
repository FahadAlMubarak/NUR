class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      # t.references :productCategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
