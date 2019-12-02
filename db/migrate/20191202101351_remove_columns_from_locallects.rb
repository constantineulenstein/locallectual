class RemoveColumnsFromLocallects < ActiveRecord::Migration[5.2]
  def change
    remove_column :locallects, :location, :string
    remove_column :locallects, :years_in_city, :string
  end
end
