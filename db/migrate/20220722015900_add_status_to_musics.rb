class AddStatusToMusics < ActiveRecord::Migration[7.0]
  def change
    add_column :musics, :status, :string
  end
end
