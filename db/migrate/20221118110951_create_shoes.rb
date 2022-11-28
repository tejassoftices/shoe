class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :brand
      t.integer :size
      t.boolean :active

      t.timestamps
    end
  end
end
