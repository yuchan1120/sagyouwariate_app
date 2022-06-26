class AddUserIdToRegularWorks < ActiveRecord::Migration[6.1]
  def change
    add_column :regular_works, :user_id, :integer
  end
end
