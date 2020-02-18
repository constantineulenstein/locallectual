class TranslateUsers < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        User.create_translation_table!({
          gender: :string
        }, {
          migrate_data: true,
          remove_source_columns: true
        })
      end

      dir.down do
        Post.drop_translation_table! migrate_data: true
      end
    end
  end
end
