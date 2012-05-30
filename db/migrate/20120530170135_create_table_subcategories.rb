class CreateTableSubcategories < ActiveRecord::Migration
  def up
    create_table :sub_categories do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end

  def down
    drop_table :sub_categories
  end
end
