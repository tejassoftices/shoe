class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :shoe_total
      t.integer :final_total
      t.integer :size
      t.string :shoe_type
      t.float :discount

      t.timestamps
    end
  end
end
