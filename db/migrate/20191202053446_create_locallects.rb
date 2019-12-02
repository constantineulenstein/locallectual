class CreateLocallects < ActiveRecord::Migration[5.2]
  def change
    create_table :locallects do |t|
      t.integer :count
      t.string :location
      t.integer :years_in_city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
