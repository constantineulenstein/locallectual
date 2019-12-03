class AddBaseLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :base_location, :string
  end
end
