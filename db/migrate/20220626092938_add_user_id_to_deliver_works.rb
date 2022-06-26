class AddUserIdToDeliverWorks < ActiveRecord::Migration[6.1]
  def change
    add_column :deliver_works, :user_id, :integer
  end
end
