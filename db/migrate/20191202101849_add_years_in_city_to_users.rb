class AddYearsInCityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :years_in_city, :integer
  end
end
