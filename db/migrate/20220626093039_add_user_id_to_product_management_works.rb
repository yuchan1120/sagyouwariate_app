class AddUserIdToProductManagementWorks < ActiveRecord::Migration[6.1]
  def change
    add_column :product_management_works, :user_id, :integer
  end
end
