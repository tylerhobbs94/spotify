class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :description
      t.index :user_id

      t.timestamps
    end
  end
end
