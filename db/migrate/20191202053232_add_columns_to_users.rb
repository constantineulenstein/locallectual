class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :job, :string
    add_column :users, :gender, :string
    add_column :users, :hobby, :string
    add_column :users, :base_location, :string
    add_column :users, :birth_location, :string
    add_column :users, :arrival_date, :datetime
    add_column :users, :mother_tongue, :string
    add_column :users, :bio, :text
  end
end
