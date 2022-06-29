class CreateRows < ActiveRecord::Migration[6.1]
  def change
    create_table :rows do |t|
      t.string :regular_work
      t.string :deliver_work
      t.string :product_management_work
      t.string :cleaning_work
      t.integer :table_id

      t.timestamps
    end
  end
end
