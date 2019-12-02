class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :location
      t.references :locallect, foreign_key: true
      t.references :explorer, foreign_key: true
      t.references :friendship, foreign_key: true

      t.timestamps
    end
  end
end
