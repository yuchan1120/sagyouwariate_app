class CreateDeliverWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :deliver_works do |t|
      t.string :name
      t.integer :time_required

      t.timestamps
    end
  end
end
