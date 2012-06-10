class CreateTableArtists < ActiveRecord::Migration
  def up
    create_table :artists do |t|
      t.string :name
      t.integer :sub_category_id

      t.timestamps
    end
  end

  def down
    drop_table :artists
  end
end
