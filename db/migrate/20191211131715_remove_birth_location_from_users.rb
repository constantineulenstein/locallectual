class RemoveBirthLocationFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :birth_location
  end
end
