class AddCityImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :city_image, :string
  end
end
