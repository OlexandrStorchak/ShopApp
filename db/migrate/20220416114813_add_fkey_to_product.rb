class AddFkeyToProduct < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :products,:product_categories, column: :category_id
  end
end
