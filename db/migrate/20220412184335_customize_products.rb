class CustomizeProducts < ActiveRecord::Migration[7.0]
  def change
    def change
      change_column :products, :p_price, :decimal, precision: 5, scale: 2
    end
  end
end
