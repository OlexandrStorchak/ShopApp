class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :products, :category_id, :integer
  end
end
