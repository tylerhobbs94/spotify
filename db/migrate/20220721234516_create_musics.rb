class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :song
      t.text :artist
      t.references :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
