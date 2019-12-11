class RemoveJobFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :job
  end
end
