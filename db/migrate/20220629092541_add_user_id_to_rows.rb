class AddUserIdToRows < ActiveRecord::Migration[6.1]
  def change
    add_column :rows, :user_id, :integer
  end
end
