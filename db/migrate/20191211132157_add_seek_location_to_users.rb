class AddSeekLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :seek_location, :string
  end
end
