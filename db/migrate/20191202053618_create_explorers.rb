class CreateExplorers < ActiveRecord::Migration[5.2]
  def change
    create_table :explorers do |t|
      t.integer :count
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
