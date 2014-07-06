class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.integer :categery_id, :post_id
      t.timestamps
    end
  end
end
