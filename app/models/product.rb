class Product < ApplicationRecord
  belongs_to :product_category
  validates :p_name, presence: { message: "Product name is empty" },
                     length: { minimum: 5, message: "Product name min 5 chars" }
  validates :p_description, presence: { message: "Product description is empty" },
                            length: { minimum: 20, message: "Min description 20 chars" }
  validates :p_price, presence: { message: "Product price is empty" },
                      numericality: { greater_than_or_equal_to: 0, message: "Price must be greater than or equal to 0" },
                      numericality: { less_than_or_equal_to: 999999.9, message: "Very high price" }
end
