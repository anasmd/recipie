class AddUserIdToRecipy < ActiveRecord::Migration
  def change
    add_column :recipies, :user_id, :integer
  end
end
