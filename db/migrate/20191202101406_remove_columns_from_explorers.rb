class RemoveColumnsFromExplorers < ActiveRecord::Migration[5.2]
  def change
    remove_column :explorers, :location, :string
  end
end
