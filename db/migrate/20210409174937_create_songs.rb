class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :description
      t.string :audio_link

      t.timestamps
    end
  end
end
