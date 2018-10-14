class AddUserToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :user, foreign_key: true
    add_index :restaurants, [:user_id, :created_at]
  end

end
