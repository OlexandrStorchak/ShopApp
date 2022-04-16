class AddFkeyToProduct < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :category_id, :product_category_id
    add_foreign_key :products, :product_categories
  end
end
