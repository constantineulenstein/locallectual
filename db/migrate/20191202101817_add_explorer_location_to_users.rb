class AddExplorerLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :explorer_location, :string
  end
end
