class AddStatusToPlaylist < ActiveRecord::Migration[7.0]
  def change
    add_column :playlists, :status, :string
  end
end
