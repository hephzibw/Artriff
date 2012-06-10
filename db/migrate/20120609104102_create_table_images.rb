class CreateTableImages < ActiveRecord::Migration
  def up
    create_table :images do |i|
       i.integer :artist_id
       i.string :title
       i.string :url
    end
  end

  def down
    drop_table :images
  end
end
