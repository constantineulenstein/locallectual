class AddLocationToForums < ActiveRecord::Migration[5.2]
  def change
    add_column :forums, :location, :string
  end
end
