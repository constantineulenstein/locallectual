class AddColumnsToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :approved, :boolean
    add_column :transactions, :declined, :boolean
  end
end
