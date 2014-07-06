class ChangeColNameInPostCategories < ActiveRecord::Migration
  def change
    rename_column :post_categories, :categery_id, :category_id
  end
end
