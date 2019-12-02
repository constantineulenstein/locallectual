class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.boolean :approved
      t.text :request_message
      t.references :locallect, foreign_key: true
      t.references :explorer, foreign_key: true

      t.timestamps
    end
  end
end
