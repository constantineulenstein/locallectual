class AddDeclinedToFriendships < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :declined, :boolean
  end
end
