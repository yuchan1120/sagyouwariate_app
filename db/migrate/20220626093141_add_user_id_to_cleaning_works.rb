class AddUserIdToCleaningWorks < ActiveRecord::Migration[6.1]
  def change
    add_column :cleaning_works, :user_id, :integer
  end
end
