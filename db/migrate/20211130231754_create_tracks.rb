class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.belongs_to :artist
      t.timestamps
    end
  end
end
