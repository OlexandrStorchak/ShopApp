class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :p_name
      t.text :p_description
      t.float :p_price

      t.timestamps
    end
  end
end
